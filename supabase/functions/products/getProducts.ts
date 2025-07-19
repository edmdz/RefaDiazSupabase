import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";
import { buildProductQuery } from "./productFilterService.ts";

/**
 * GET /products
 * Retorna todos los registros de la tabla "product" con su "product_type" relacionado
 * y los "car_model" asociados a través de "product_car_model".
 * Soporta búsqueda por nombre con el parámetro "name" y filtrado por tipo de producto con "productTypeId".
 */
export async function handleGetProducts(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const name = url.searchParams.get("name");
    const productTypeId = url.searchParams.get("productTypeId");
    const brandId = url.searchParams.get("brandId");
    const modelId = url.searchParams.get("modelId");
    const modelYear = url.searchParams.get("modelYear");

    let query = supabase
      .from("product")
      .select(`
        *,
        product_type(id, name),
        product_car_model!inner(
          car_model_id,
          initial_year,
          last_year,
          active,
          car_model!inner(
            id,
            name,
            brand!inner(id, name)
          )
        )
      `)
      .eq("active", true)
      .eq("product_car_model.active", true);

    if (name) {
      query = query.ilike("name", `%${name}%`);
    }

    if (productTypeId) {
      query = query.eq("product_type_id", productTypeId);
    }

    query = buildProductQuery(query, { brandId: brandId || undefined, modelId: modelId || undefined, modelYear: modelYear || undefined });

    const { data, error } = await query;

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Procesar los datos para estructurar mejor los carModels
    const processedData = data?.map(product => ({
      ...product,
      productCarModels: product.product_car_model?.map((pcm: any) => ({
        carModelId: pcm.car_model_id,
        initialYear: pcm.initial_year,
        lastYear: pcm.last_year,
        active: pcm.active,
        carModel: pcm.car_model
      })) || []
    }));

    // Remover el atributo product_car_model original ya que ahora tenemos carModels
    const cleanedData = processedData?.map(product => {
      const { product_car_model, ...rest } = product;
      return rest;
    });

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseData = convertToCamelCase(cleanedData);

    return new Response(
      JSON.stringify(camelCaseData),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 