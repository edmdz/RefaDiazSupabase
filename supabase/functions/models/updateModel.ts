import { convertToCamelCase, convertToSnakeCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * PUT /models?id=<ID>
 * Actualiza un modelo existente en la tabla "car_model".
 * 
 * Payload esperado:
 * {
 *   "name": "Modelo Actualizado",
 *   "brandId": 1,
 *   "active": true
 * }
 */
export async function handlePutModel(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody);

    const { data, error } = await supabase
      .from("car_model")
      .update(body)
      .eq("id", id)
      .select("*, brand(name, brand_type_id)")
      .single();

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { 
          status: error.code === "PGRST116" ? 404 : 500,
          headers: { "Content-Type": "application/json" } 
        }
      );
    }

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