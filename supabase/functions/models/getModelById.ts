import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * GET /models?id=<ID>
 * Retorna un modelo específico de la tabla "car_model" con su "brand" relacionado.
 */
export async function handleGetModelById(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const { data, error } = await supabase
      .from("car_model")
      .select("*, brand(name, brand_type_id)")
      .eq("id", id)
      .eq("active", true)
      .single();

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { 
          status: error.code === "PGRST116" ? 404 : 500, // 404 si no existe
          headers: { "Content-Type": "application/json" } 
        }
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