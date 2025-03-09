// Sigue esta guía de configuración para integrar el servidor de lenguaje Deno con tu editor:
// https://deno.land/manual/getting_started/setup_your_environment
// Esto habilita el autocompletado, ir a la definición, etc.

// Configura las definiciones de tipos para las API de tiempo de ejecución de Supabase
import "jsr:@supabase/functions-js/edge-runtime.d.ts"

// Importa el cliente de Supabase desde esm.sh
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { serveWithCors } from "../_shared/server.ts";
import { 
  convertToCamelCase, 
  convertToSnakeCase 
} from "../_shared/utils.ts";

// Obtén las variables de entorno necesarias para la conexión
const supabaseUrl = Deno.env.get("SUPABASE_URL");
const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");

if (!supabaseUrl || !supabaseKey) {
  console.error("Error: Falta SUPABASE_URL o SUPABASE_SERVICE_ROLE_KEY en las variables de entorno.");
  Deno.exit(1);
}

// Inicializa el cliente de Supabase
const supabase = createClient(supabaseUrl, supabaseKey);

console.log("Edge Function 'providers' iniciada...");

/**
 * GET /providers
 * Retorna todos los registros de la tabla "provider".
 * Soporta búsqueda por nombre con el parámetro "name".
 */
async function handleGetProviders(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const name = url.searchParams.get("name");

    let query = supabase
      .from("provider")
      .select("*")
      .eq("active", true);

    if (name) {
      query = query.ilike("name", `%${name}%`);
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
    const totalCount = camelCaseData.length;

    return new Response(
      JSON.stringify({ providers: camelCaseData, totalCount }),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
}

/**
 * GET /providers?id=<ID>
 * Retorna un proveedor específico de la tabla "provider".
 */
async function handleGetProviderById(req: Request): Promise<Response> {
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
      .from("provider")
      .select("*")
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

/**
 * POST /providers
 * Crea un nuevo proveedor en la tabla "provider".
 * 
 * Payload esperado:
 * {
 *   "active": true,
 *   "createdAt": "2024-09-09T01:47:51.870737",
 *   "updatedAt": "2024-09-09T01:47:51.870737",
 *   "id": 2,
 *   "name": "FRONTERA",
 *   "phoneNumber": "8129710460",
 *   "address": "AV. CHAPULTEPEC 2321",
 *   "comments": null
 * }
 * 
 * Query params opcionales:
 * - forceCreate: Si está presente, fuerza la creación sin validar similitud
 */
async function handlePostProvider(req: Request): Promise<Response> {
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

    // Definir la interfaz para el cuerpo de la solicitud
    interface ProviderRequestBody {
      active: boolean;
      createdAt: string;
      updatedAt: string;
      id: number;
      name: string;
      phoneNumber: string;
      address: string;
      comments: string | null;
      [key: string]: any;
    }

    // Definir la interfaz para el cuerpo en formato snake_case
    interface SnakeCaseProviderBody {
      active: boolean;
      created_at: string;
      updated_at: string;
      id: number;
      name: string;
      phone_number: string;
      address: string;
      comments: string | null;
      [key: string]: any;
    }

    const camelCaseBody = await req.json() as ProviderRequestBody;
    
    // Validar que el cuerpo tenga los campos requeridos
    if (!camelCaseBody.name || !camelCaseBody.phoneNumber || !camelCaseBody.address) {
      return new Response(
        JSON.stringify({ error: "Los campos 'name', 'phoneNumber' y 'address' son obligatorios" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }
    
    // Convertir a snake_case para la base de datos
    const body = convertToSnakeCase<SnakeCaseProviderBody>(camelCaseBody);
    
    // Crear el nuevo proveedor
    const { data, error } = await supabase
      .from("provider")
      .insert(body)
      .select("*")
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

/**
 * PUT /providers?id=<ID>
 * Actualiza un proveedor existente en la tabla "provider".
 * 
 * Payload esperado:
 * {
 *   "active": true,
 *   "createdAt": "2024-09-09T01:47:51.870737",
 *   "updatedAt": "2024-09-09T01:47:51.870737",
 *   "id": 2,
 *   "name": "FRONTERA",
 *   "phoneNumber": "8129710460",
 *   "address": "AV. CHAPULTEPEC 2321",
 *   "comments": null
 * }
 */
async function handlePutProvider(req: Request): Promise<Response> {
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
      .from("provider")
      .update(body)
      .eq("id", id)
      .select("*")
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

/**
 * DELETE /providers?id=<ID>
 * Desactiva un proveedor existente (soft delete).
 */
async function handleDeleteProvider(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el proveedor antes de desactivar
    const { data: providerData, error: fetchError } = await supabase
      .from("provider")
      .select("*")
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

    // Desactivar el proveedor
    const { error: updateError } = await supabase
      .from("provider")
      .update({ active: false })
      .eq("id", id);

    if (updateError) {
      return new Response(
        JSON.stringify({ error: updateError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    const camelCaseProviderData = convertToCamelCase(providerData);
    return new Response(
      JSON.stringify(camelCaseProviderData),
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
  if (req.method === "GET") {
    const url = new URL(req.url);
    if (url.searchParams.get("id")) {
      return await handleGetProviderById(req);
    } else {
      return await handleGetProviders(req);
    }
  }

  switch (req.method) {
    case "POST":
      return await handlePostProvider(req);
    case "PUT":
      return await handlePutProvider(req);
    case "DELETE":
      return await handleDeleteProvider(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
  }
});