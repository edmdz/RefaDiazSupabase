import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

interface AccessoryQueryAnalysis {
  tokens: string[];
}

interface TokenMatchIds {
  modelIds: number[];
  brandIds: number[];
  nameTokens: string[];
}

function buildAccessoryProductSelect(
  includeCompatibilityJoin: boolean,
): string {
  const compatibilityRelation = includeCompatibilityJoin
    ? `product_car_model!inner(
          car_model_id,
          initial_year,
          last_year,
          active,
          car_model!inner(
            id,
            name,
            brand!inner(id, name)
          )
        )`
    : `product_car_model(
          car_model_id,
          initial_year,
          last_year,
          active,
          car_model(
            id,
            name,
            brand(id, name)
          )
        )`;

  return `
    *,
    product_type(id, name),
    product_category:product_category_id(
      id,
      name,
      description,
      product_type_id,
      order_id,
      active
    ),
    ${compatibilityRelation}
  `;
}

function normalizeAccessoryProducts(products: any[] | null | undefined) {
  const processedData = (products || []).map((product: any) => ({
    ...product,
    productCarModels: product.product_car_model
      ?.map((pcm: any) => ({
        carModelId: pcm.car_model_id,
        initialYear: pcm.initial_year,
        lastYear: pcm.last_year,
        active: pcm.active,
        carModel: pcm.car_model,
      }))
      .filter((pcm: any) => pcm.active) || [],
    productCategory: product.product_category || null,
  }));

  return processedData.map((product: any) => {
    const { product_car_model, ...rest } = product;
    return rest;
  });
}

function parseAccessoryQuery(query: string): AccessoryQueryAnalysis {
  return {
    tokens: query.split(/\s+/).filter(Boolean),
  };
}

async function findTokenMatchIds(tokens: string[]): Promise<TokenMatchIds> {
  const modelIdsFromTokens: number[] = [];
  const brandIdsFromTokens: number[] = [];
  const nameTokens: string[] = [];

  for (const token of tokens) {
    const [
      { data: modelData, error: modelError },
      { data: brandData, error: brandError },
    ] = await Promise.all([
      supabase
        .from("car_model")
        .select("id")
        .ilike("name", `%${token}%`)
        .eq("active", true),
      supabase
        .from("brand")
        .select("id")
        .ilike("name", `%${token}%`)
        .eq("active", true),
    ]);

    if (modelError) {
      throw new Error(modelError.message);
    }

    if (brandError) {
      throw new Error(brandError.message);
    }

    const matchedModelIds = (modelData || []).map((model) => model.id);
    const matchedBrandIds = (brandData || []).map((brand) => brand.id);

    if (matchedModelIds.length > 0) {
      modelIdsFromTokens.push(...matchedModelIds);
    }

    if (matchedBrandIds.length > 0) {
      brandIdsFromTokens.push(...matchedBrandIds);
    }

    if (matchedModelIds.length === 0 && matchedBrandIds.length === 0) {
      nameTokens.push(token);
    }
  }

  return {
    modelIds: [...new Set(modelIdsFromTokens)],
    brandIds: [...new Set(brandIdsFromTokens)],
    nameTokens,
  };
}

async function resolveCompatibilityModelIds(
  modelIds: number[],
  brandIds: number[],
): Promise<number[]> {
  if (modelIds.length > 0 && brandIds.length > 0) {
    const { data, error } = await supabase
      .from("car_model")
      .select("id")
      .in("id", modelIds)
      .in("brand_id", brandIds)
      .eq("active", true);

    if (error) {
      throw new Error(error.message);
    }

    return [...new Set((data || []).map((model) => model.id))];
  }

  if (brandIds.length > 0) {
    const { data, error } = await supabase
      .from("car_model")
      .select("id")
      .in("brand_id", brandIds)
      .eq("active", true);

    if (error) {
      throw new Error(error.message);
    }

    return [...new Set((data || []).map((model) => model.id))];
  }

  return [...new Set(modelIds)];
}

async function executeAccessorySearch(
  productTypeId: string,
  nameTokens: string[],
  compatibilityModelIds: number[],
) {
  const includeCompatibilityJoin = compatibilityModelIds.length > 0;

  let query: any = supabase
    .from("product")
    .select(buildAccessoryProductSelect(includeCompatibilityJoin))
    .eq("product_type_id", productTypeId)
    .eq("active", true)
    .order("created_at", { ascending: false });

  if (includeCompatibilityJoin) {
    query = query
      .eq("product_car_model.active", true)
      .in("product_car_model.car_model_id", compatibilityModelIds);
  }

  for (const token of nameTokens) {
    query = query.ilike("name", `%${token}%`);
  }

  const { data, error } = await query;

  if (error) {
    throw new Error(error.message);
  }

  return data || [];
}

/**
 * Búsqueda para accesorios basada en tokens:
 * - tokens que coinciden con modelos se usan como compatibilidad
 * - tokens que coinciden con marcas expanden a los modelos de la marca
 * - si hay marca + modelo, se usa la intersección
 * - tokens que no coinciden con marca/modelo se usan como filtro AND sobre product.name
 */
export async function handleAccessorySearch(
  q: string,
  productTypeId: string,
): Promise<Response> {
  try {
    const trimmedQuery = q.trim();

    if (!trimmedQuery) {
      return new Response(JSON.stringify([]), {
        status: 200,
        headers: { "Content-Type": "application/json" },
      });
    }

    const { tokens } = parseAccessoryQuery(trimmedQuery);

    if (tokens.length === 0) {
      return new Response(JSON.stringify([]), {
        status: 200,
        headers: { "Content-Type": "application/json" },
      });
    }

    const { modelIds, brandIds, nameTokens } = await findTokenMatchIds(tokens);
    const compatibilityModelIds = await resolveCompatibilityModelIds(
      modelIds,
      brandIds,
    );

    if (
      tokens.length > 0 &&
      modelIds.length === 0 &&
      brandIds.length === 0 &&
      nameTokens.length === 0
    ) {
      return new Response(JSON.stringify([]), {
        status: 200,
        headers: { "Content-Type": "application/json" },
      });
    }

    if (
      (modelIds.length > 0 || brandIds.length > 0) &&
      compatibilityModelIds.length === 0
    ) {
      return new Response(JSON.stringify([]), {
        status: 200,
        headers: { "Content-Type": "application/json" },
      });
    }

    const searchResults = await executeAccessorySearch(
      productTypeId,
      nameTokens,
      compatibilityModelIds,
    );

    const normalizedProducts = normalizeAccessoryProducts(searchResults);
    const camelCaseData = convertToCamelCase(normalizedProducts);

    return new Response(JSON.stringify(camelCaseData), {
      status: 200,
      headers: { "Content-Type": "application/json" },
    });
  } catch (err: any) {
    return new Response(
      JSON.stringify({
        error: err.message || "Error al procesar la búsqueda de accesorios",
      }),
      { status: 500, headers: { "Content-Type": "application/json" } },
    );
  }
}
