import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * GET /products
 * Retorna todos los registros de la tabla "product" con su "product_type" relacionado.
 * Soporta búsqueda por nombre con el parámetro "name" y filtrado por tipo de producto con "productTypeId".
 */
export async function handleGetProducts(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const name = url.searchParams.get("name");
    const productTypeId = url.searchParams.get("productTypeId");

    let query = supabase
      .from("product")
      .select(`
        *,
        product_type(id, name)
      `)
      .eq("active", true);

    if (name) {
      query = query.ilike("name", `%${name}%`);
    }

    if (productTypeId) {
      query = query.eq("product_type_id", productTypeId);
    }

    const { data, error } = await query;

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseData = convertToCamelCase(data);

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