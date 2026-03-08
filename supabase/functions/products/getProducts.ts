import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";
import { handleAccessorySearch } from "./accessorySearchService.ts";
import { buildProductQuery } from "./productFilterService.ts";
import { handleSmartSearch } from "./productSearchService.ts"; // Importar la nueva función

function buildProductSelect(includeCompatibilityJoin: boolean): string {
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

/**
 * GET /products
 * Retorna registros de la tabla "product".
 * Si se proporciona el parámetro 'q', realiza una búsqueda inteligente.
 * De lo contrario, aplica filtros estándar como 'name', 'productTypeId', etc.
 */
export async function handleGetProducts(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const q = url.searchParams.get("q");
    const productTypeId = url.searchParams.get("productTypeId");

    // Si 'q' está presente, usar la búsqueda inteligente
    if (q) {
      if (!productTypeId) {
        return new Response(
          JSON.stringify({
            error:
              "El parámetro 'productTypeId' es obligatorio para la búsqueda inteligente.",
          }),
          { status: 400, headers: { "Content-Type": "application/json" } },
        );
      }

      const { data: productType, error: productTypeError } = await supabase
        .from("product_type")
        .select("id, name")
        .eq("id", productTypeId)
        .eq("active", true)
        .maybeSingle();

      if (productTypeError) {
        return new Response(
          JSON.stringify({ error: productTypeError.message }),
          { status: 500, headers: { "Content-Type": "application/json" } },
        );
      }

      if (!productType) {
        return new Response(
          JSON.stringify({
            error: "El productTypeId no existe o no está activo.",
          }),
          { status: 404, headers: { "Content-Type": "application/json" } },
        );
      }

      if (productType.name?.toLowerCase() === "accesorio") {
        return handleAccessorySearch(q, productTypeId);
      }

      return handleSmartSearch(q, productTypeId);
    }

    // Lógica de filtrado original si 'q' no está presente
    const name = url.searchParams.get("name");
    const brandId = url.searchParams.get("brandId");
    const modelId = url.searchParams.get("modelId");
    const modelYear = url.searchParams.get("modelYear");
    const productCategoryId = url.searchParams.get("productCategoryId");
    const hasCompatibilityFilters = Boolean(brandId || modelId || modelYear);

    let query: any = supabase
      .from("product")
      .select(buildProductSelect(hasCompatibilityFilters))
      .eq("active", true)
      .order("created_at", { ascending: false });

    if (name) {
      query = query.ilike("name", `%${name}%`);
    }

    if (productTypeId) {
      query = query.eq("product_type_id", productTypeId);
    }

    if (productCategoryId) {
      query = query.eq("product_category_id", productCategoryId);
    }

    if (hasCompatibilityFilters) {
      query = query.eq("product_car_model.active", true);
      query = buildProductQuery(query, {
        brandId: brandId || undefined,
        modelId: modelId || undefined,
        modelYear: modelYear || undefined,
      });
    }

    const { data, error } = await query;

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    const processedData = (data as any[])?.map((product: any) => ({
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

    const cleanedData = processedData?.map((product: any) => {
      const { product_car_model, ...rest } = product;
      return rest;
    });

    const camelCaseData = convertToCamelCase(cleanedData);

    return new Response(
      JSON.stringify(camelCaseData),
      { status: 200, headers: { "Content-Type": "application/json" } },
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } },
    );
  }
}
