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

console.log("Edge Function 'users' iniciada...");

/**
 * GET /users
 * Retorna todos los registros de la tabla "user" con información completa de "person" y "role".
 */
async function handleGetUsers(req: Request): Promise<Response> {
  const { data, error } = await supabase
    .from("user")
    .select("*, person(*), role(*)")
    .eq("active", 1); // Solo usuarios activos, si aplica

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

/**
 * GET /users?id=<ID>
 * Retorna un usuario específico de la tabla "user" con información completa de "person" y "role".
 */
async function handleGetUserById(req: Request): Promise<Response> {
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
      .from("user")
      .select("*, person(*), role(*)")
      .eq("id", id)
      .eq("active", 1) // Solo usuarios activos, si aplica
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
 * POST /users
 * Crea un nuevo usuario tanto en el sistema de autenticación como en la tabla "user",
 * incluyendo datos de "person" y "roleId".
 * 
 * Payload esperado:
 * {
 *   "email": "usuario@ejemplo.com",
 *   "password": "tuPasswordSegura",
 *   "person": {
 *     "name": "Juan",
 *     "lastName": "Pérez",
 *     "birthDate": "1990-01-01",
 *     "email": "usuario@ejemplo.com",
 *     "phoneNumber": "1234567890",
 *     "address": "Calle Falsa 123"
 *   },
 *   "roleId": 1,
 *   "active": 1  // Opcional, por defecto 1
 * }
 */
async function handlePostUser(req: Request): Promise<Response> {
  try {
    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Convertir el cuerpo de la solicitud de camelCase a snake_case
    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody);
    
    const { email, password, person, role_id, active } = body;

    if (!email || !password || !person || !role_id) {
      return new Response(
        JSON.stringify({ error: "Faltan campos obligatorios: email, password, person o roleId" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Crear usuario en Supabase Auth
    const { data: authData, error: authError } = await supabase.auth.admin.createUser({
      email,
      password,
      email_confirm: true,
    });

    if (authError) {
      return new Response(
        JSON.stringify({ error: authError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    const newUserId = authData.user?.id;
    if (!newUserId) {
      return new Response(
        JSON.stringify({ error: "No se pudo obtener el ID del usuario creado en Auth" }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Insertar datos de person y user en una transacción
    const { data, error } = await supabase.rpc("create_user_with_person", {
      user_data: {
        id: newUserId,
        roleId: role_id,
        active: active ?? 1,
        person,
      },
    });

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el usuario completo con person y role
    const { data: userData, error: fetchError } = await supabase
      .from("user")
      .select("*, person(*), role(*)")
      .eq("id", newUserId)
      .single();

    if (fetchError) {
      return new Response(
        JSON.stringify({ error: fetchError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseUserData = convertToCamelCase(userData);

    return new Response(
      JSON.stringify(camelCaseUserData),
      { status: 201, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: "Payload JSON inválido o error inesperado" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
}

/**
 * PUT /users?id=<ID>
 * Actualiza un registro existente en la tabla "user", incluyendo datos de "person".
 * 
 * Payload esperado:
 * {
 *   "person": {
 *     "name": "Juan Actualizado",
 *     "lastName": "Pérez",
 *     "birthDate": "1990-01-01",
 *     "email": "usuario@ejemplo.com",
 *     "phoneNumber": "1234567890",
 *     "address": "Calle Nueva 456"
 *   },
 *   "roleId": 2,
 *   "active": 0
 * }
 */
async function handlePutUser(req: Request): Promise<Response> {
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
    
    const { person, role_id, active } = body;

    // Actualizar person si se proporciona
    if (person) {
      const { error: personError } = await supabase
        .from("person")
        .update(person)
        .eq("id", (await supabase.from("user").select("person_id").eq("id", id).single()).data.person_id);

      if (personError) {
        return new Response(
          JSON.stringify({ error: personError.message }),
          { status: 500, headers: { "Content-Type": "application/json" } }
        );
      }
    }

    // Actualizar user
    const { data, error } = await supabase
      .from("user")
      .update({ role_id, active })
      .eq("id", id)
      .select("*, person(*), role(*)");

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
 * DELETE /users?id=<ID>
 * Elimina (desactiva) un usuario existente.
 */
async function handleDeleteUser(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el usuario antes de desactivar
    const { data: userData, error: fetchError } = await supabase
      .from("user")
      .select("*, person(*), role(*)")
      .eq("id", id)
      .single();

    if (fetchError) {
      return new Response(
        JSON.stringify({ error: fetchError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Desactivar el usuario
    const { error: updateError } = await supabase
      .from("user")
      .update({ active: 0 })
      .eq("id", id);

    if (updateError) {
      return new Response(
        JSON.stringify({ error: updateError.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }

    // Convertir a camelCase antes de enviar la respuesta
    const camelCaseUserData = convertToCamelCase(userData);

    return new Response(
      JSON.stringify(camelCaseUserData),
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
      if (new URL(req.url).searchParams.get("id")) {
        return await handleGetUserById(req);
      } else {
        return await handleGetUsers(req);
      }
    case "POST":
      return await handlePostUser(req);
    case "PUT":
      return await handlePutUser(req);
    case "DELETE":
      return await handleDeleteUser(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
  }
});