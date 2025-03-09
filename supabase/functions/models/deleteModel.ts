import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * DELETE /models?id=<ID>
 * Desactiva un modelo existente (soft delete).
 */
export async function handleDeleteModel(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el modelo antes de desactivar
    const { data: modelData, error: fetchError } = await supabase
      .from("car_model")
      .select("*, brand(name, brand_type_id)")
      .eq("id", id)
      .single();

    if (fetchError) {
      return new Response(
        JSON.stringify({ error: fetchError.message }),
        { 
          status: fetchError.code === "PGRST116" ? 404 : 500,
          headers: { "Content-Type": "application/json" } 
        }
      );
    }

    // Desactivar el modelo
    const { error: updateError } = await supabase
      .from("car_model")
      .update({ active: false })
      .eq("id", id);

    if (updateError) {
      return new Response(
        JSON.stringify({ error: updateError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    const camelCaseModelData = convertToCamelCase(modelData);
    return new Response(
      JSON.stringify(camelCaseModelData),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 