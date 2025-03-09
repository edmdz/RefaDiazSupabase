import { convertToCamelCase, calculateStringSimilarity } from "../_shared/utils.ts";
import { ModelRequestBody, SnakeCaseModelBody } from "./types.ts";
import { supabase } from "./config.ts";

/**
 * POST /models
 * Crea un nuevo modelo en la tabla "car_model".
 * 
 * Payload esperado:
 * {
 *   "name": "Nuevo Modelo",
 *   "brandId": 1,
 *   "active": true
 * }
 * 
 * Query params opcionales:
 * - forceCreate: Si está presente, fuerza la creación sin validar similitud
 */
export async function handlePostModel(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const forceCreate = url.searchParams.has("forceCreate");
    
    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const camelCaseBody = await req.json() as ModelRequestBody;
    
    // Validar que el cuerpo tenga los campos requeridos
    if (!camelCaseBody.name || !camelCaseBody.brandId) {
      return new Response(
        JSON.stringify({ error: "Los campos 'name' y 'brandId' son obligatorios" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }
    
    // Sanitizar el cuerpo para solo extraer lo necesario
    const body = {
      name: camelCaseBody.name,
      brand_id: camelCaseBody.brandId,
      active: camelCaseBody.active
    } as SnakeCaseModelBody;
    
    // Si no se fuerza la creación, verificar si existe un modelo con nombre similar
    if (!forceCreate) {
      const { data: existingModels, error: searchError } = await supabase
        .from("car_model")
        .select("*, brand(name, brand_type_id)")
        .eq("active", true);
      
      if (searchError) {
        return new Response(
          JSON.stringify({ error: searchError.message }),
          { status: 500, headers: { "Content-Type": "application/json" } }
        );
      }
      
      // Umbral de similitud (ajustar según necesidad)
      const SIMILARITY_THRESHOLD = 0.8;
      
      // Buscar modelos con nombres similares
      const similarModel = existingModels.find(model => {
        const similarity = calculateStringSimilarity(model.name, body.name);
        return similarity >= SIMILARITY_THRESHOLD;
      });
      
      if (similarModel) {
        // Convertir a camelCase antes de enviar la respuesta
        const camelCaseSimilarModel = convertToCamelCase(similarModel);
        
        return new Response(
          JSON.stringify({ 
            error: "Ya existe un modelo con un nombre similar", 
            similarModel: camelCaseSimilarModel 
          }),
          { status: 409, headers: { "Content-Type": "application/json" } }
        );
      }
    }
    
    // Crear el nuevo modelo
    const { data, error } = await supabase
      .from("car_model")
      .insert(body)
      .select("*, brand(name, brand_type_id)")
      .single();
    
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
      { status: 201, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 