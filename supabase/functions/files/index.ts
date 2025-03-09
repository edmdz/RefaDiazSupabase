// Importa las definiciones de tipos y la API del runtime de Supabase
import "jsr:@supabase/functions-js/edge-runtime.d.ts";

// Importa el cliente de Supabase desde esm.sh
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { serveWithCors } from "../_shared/server.ts";
import { convertToCamelCase, convertToSnakeCase } from "../_shared/utils.ts";

// Obtén las variables de entorno necesarias para la conexión
const supabaseUrl = Deno.env.get("SUPABASE_URL");
const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");

if (!supabaseUrl || !supabaseKey) {
  console.error("Error: Falta SUPABASE_URL o SUPABASE_SERVICE_ROLE_KEY en las variables de entorno.");
  Deno.exit(1);
}

// Inicializa el cliente de Supabase
const supabase = createClient(supabaseUrl, supabaseKey);

console.log("Edge Function 'files' iniciada...");

/**
 * GET /files
 * - Si se envía el parámetro "id", retorna un archivo específico.
 * - De lo contrario, si se proveen "object_id" y/o "file_type_id", filtra los archivos según esos parámetros.
 * - Si no se proveen filtros, retorna todos los archivos.
 */
async function handleGetFiles(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");
    const objectId = url.searchParams.get("object_id");
    const fileTypeId = url.searchParams.get("file_type_id");

    if (id) {
      // Obtener un archivo específico por su ID
      const { data, error } = await supabase
        .from("file")
        .select("*")
        .eq("id", id)
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
        { status: 200, headers: { "Content-Type": "application/json" } }
      );
    } else {
      // Construir la consulta para obtener todos los archivos
      let query = supabase.from("file").select("*");

      // Aplicar filtro por object_id si se proporciona
      if (objectId) {
        query = query.eq("object_id", objectId);
      }
      // Aplicar filtro por file_type_id si se proporciona
      if (fileTypeId) {
        query = query.eq("file_type_id", fileTypeId);
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
    }
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
}

/**
 * POST /files
 * Crea un nuevo registro en la tabla "file".
 * 
 * Ejemplo de payload:
 * {
 *   "name": "Acura Logo",
 *   "mimeType": "image/png",
 *   "storagePath": "/brands/logos/acura.png",
 *   "objectId": 1,
 *   "orderId": 1,
 *   "fileTypeId": 1,
 *   "active": true
 * }
 */
async function handlePostFile(req: Request): Promise<Response> {
  try {
    // Convertir el cuerpo de la solicitud de camelCase a snake_case
    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody);
    
    const { data, error } = await supabase
      .from("file")
      .insert(body)
      .select("*");

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
      JSON.stringify({ error: "Payload JSON inválido" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
}

/**
 * PUT /files?id=<ID>
 * Actualiza un registro existente en la tabla "file".
 * Se espera que el ID se reciba como parámetro de consulta.
 * 
 * Ejemplo de payload:
 * {
 *   "name": "Acura Logo Updated",
 *   "mimeType": "image/png",
 *   "storagePath": "/brands/logos/acura_updated.png",
 *   "objectId": 1,
 *   "orderId": 2,
 *   "fileTypeId": 1,
 *   "active": true
 * }
 */
async function handlePutFile(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");
    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }
    
    // Convertir el cuerpo de la solicitud de camelCase a snake_case
    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody);
    
    const { data, error } = await supabase
      .from("file")
      .update(body)
      .eq("id", id)
      .select("*");

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
      JSON.stringify({ error: "Payload JSON inválido" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
}

/**
 * DELETE /files?id=<ID>
 * Elimina un registro de la tabla "file". Se espera que el ID se reciba como parámetro de consulta.
 */
async function handleDeleteFile(req: Request): Promise<Response> {
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
      .from("file")
      .delete()
      .eq("id", id)
      .select("*");

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

// Función principal que enruta la petición según el método HTTP
serveWithCors(async (req: Request) => {
  switch (req.method) {
    case "GET":
      return await handleGetFiles(req);
    case "POST":
      return await handlePostFile(req);
    case "PUT":
      return await handlePutFile(req);
    case "DELETE":
      return await handleDeleteFile(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
  }
});