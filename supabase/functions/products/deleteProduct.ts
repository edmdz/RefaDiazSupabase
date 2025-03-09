import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * DELETE /products?id=<ID>
 * Elimina un producto existente (borrado físico).
 */
export async function handleDeleteProduct(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el producto antes de eliminar
    const { data: productData, error: fetchError } = await supabase
      .from("product")
      .select(`
        *,
        product_type(id, name)
      `)
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

    // Eliminar el producto
    const { error: deleteError } = await supabase
      .from("product")
      .delete()
      .eq("id", id);

    if (deleteError) {
      return new Response(
        JSON.stringify({ error: deleteError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    const camelCaseProductData = convertToCamelCase(productData);
    return new Response(
      JSON.stringify(camelCaseProductData),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 