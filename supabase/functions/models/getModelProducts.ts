import { convertToCamelCase } from "../_shared/utils.ts";
import { supabase } from "./config.ts";

/**
 * GET /models/products
 * Retorna todos los productos asociados a un modelo específico, con filtro opcional por tipo de producto.
 * Devuelve los objetos de product_car_model con la información del producto anidada,
 * incluyendo todos los carModels asociados a cada producto.
 * 
 * Query params:
 * - modelId: ID del modelo (obligatorio)
 * - productTypeId: ID del tipo de producto (opcional)
 */
export async function handleGetModelProducts(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const modelId = url.searchParams.get("modelId");
    const productTypeId = url.searchParams.get("productTypeId");

    if (!modelId) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'modelId' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Verificar que el modelo existe y está activo
    const { data: model, error: modelError } = await supabase
      .from("car_model")
      .select("id, name, brand:brand_id(id, name)")
      .eq("id", modelId)
      .eq("active", true)
      .single();

    if (modelError) {
      return new Response(
        JSON.stringify({ error: modelError.message }),
        { 
          status: modelError.code === "PGRST116" ? 404 : 500,
          headers: { "Content-Type": "application/json" } 
        }
      );
    }

    // Construir la consulta para obtener los productos asociados al modelo
    let query = supabase
      .from("product_car_model")
      .select(`
        product_id,
        car_model_id,
        initial_year,
        last_year,
        active,
        created_at,
        updated_at,
        product:product_id(
          id, 
          name, 
          comments, 
          stock_count, 
          dpi, 
          product_type_id,
          product_type:product_type_id(id, name),
          product_car_model!product_car_model_product_id_fkey(
            car_model_id,
            initial_year,
            last_year,
            active,
            car_model:car_model_id(
              id,
              name,
              brand:brand_id(id, name)
            )
          )
        )
      `)
      .eq("car_model_id", modelId)
      .eq("active", true)
      .eq("product.product_car_model.active", true);

    const { data: productCarModels, error: productsError } = await query;

    if (productsError) {
      return new Response(
        JSON.stringify({ error: productsError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Filtrar por tipo de producto si se proporciona
    let filteredProductCarModels = productCarModels;
    if (productTypeId) {
      filteredProductCarModels = productCarModels.filter(
        pcm => pcm.product && pcm.product.product_type_id === parseInt(productTypeId)
      );
    }

    // Procesar los datos para estructurar mejor los carModels en cada producto
    const processedData = filteredProductCarModels?.map(pcm => ({
      ...pcm,
      product: pcm.product ? {
        ...pcm.product,
        carModels: pcm.product.product_car_model?.map((productCarModel: any) => ({
          carModelId: productCarModel.car_model_id,
          initialYear: productCarModel.initial_year,
          lastYear: productCarModel.last_year,
          active: productCarModel.active,
          carModel: productCarModel.car_model
        })) || [],
        // Remover el atributo product_car_model original
        product_car_model: undefined
      } : null
    }));

    // Limpiar los datos eliminando product_car_model anidado
    const cleanedData = processedData?.map(pcm => {
      if (pcm.product) {
        const { product_car_model, ...cleanProduct } = pcm.product;
        return {
          ...pcm,
          product: cleanProduct
        };
      }
      return pcm;
    });

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseResponse = convertToCamelCase(cleanedData);

    return new Response(
      JSON.stringify(camelCaseResponse),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 