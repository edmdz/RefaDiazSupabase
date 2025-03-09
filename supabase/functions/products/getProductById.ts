import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * GET /products?id=<ID>
 * Retorna un producto específico de la tabla "product" con su "product_type" relacionado,
 * modelos de auto compatibles, precios, proveedores y archivos asociados.
 */
export async function handleGetProductById(req: Request): Promise<Response> {
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
      .from("product")
      .select(`
        *,
        product_type(id, name),
        car_models:product_car_model(
          car_model_id,
          initial_year,
          last_year,
          car_model:car_model_id(
            id,
            name,
            brand:brand_id(id, name)
          )
        ),
        prices:product_price(
          product_id,
          price_id,
          price:price_id(*)
        ),
        providers:provider_product(
          provider_id,
          price_id,
          num_series,
          price:price_id(*),
          provider:provider_id(*)
        )
      `)
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

    // Obtener los archivos asociados al producto
    const { data: files, error: filesError } = await supabase
      .from("file")
      .select(`
        id,
        name,
        mime_type,
        storage_path,
        object_id,
        order_id,
        file_type:file_type_id(id, name),
        active,
        created_at,
        updated_at
      `)
      .eq("object_id", id)
      .eq("file_type_id", 2)
      .eq("active", true)
      .order("order_id", { ascending: true });

    if (filesError) {
      return new Response(
        JSON.stringify({ error: filesError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Agregar los archivos a la respuesta
    const responseData = {
      ...data,
      files: files
    };

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseData = convertToCamelCase(responseData);

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