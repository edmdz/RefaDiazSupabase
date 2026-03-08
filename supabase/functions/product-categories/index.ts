import "jsr:@supabase/functions-js/edge-runtime.d.ts";

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { serveWithCors } from "../_shared/server.ts";
import { convertToCamelCase, convertToSnakeCase } from "../_shared/utils.ts";

const supabaseUrl = Deno.env.get("SUPABASE_URL");
const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");

if (!supabaseUrl || !supabaseKey) {
  console.error(
    "Error: Falta SUPABASE_URL o SUPABASE_SERVICE_ROLE_KEY en las variables de entorno.",
  );
  Deno.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

console.log("Edge Function 'product-categories' iniciada...");

async function handleGetProductCategories(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");
    const name = url.searchParams.get("name");
    const productTypeId = url.searchParams.get("productTypeId");
    const active = url.searchParams.get("active");

    let query = supabase
      .from("product_category")
      .select(`
        *,
        product_type:product_type_id(id, name)
      `)
      .order("product_type_id", { ascending: true })
      .order("order_id", { ascending: true, nullsFirst: false })
      .order("name", { ascending: true });

    if (id) {
      query = query.eq("id", id);
    }

    if (name) {
      query = query.ilike("name", `%${name}%`);
    }

    if (productTypeId) {
      query = query.eq("product_type_id", productTypeId);
    }

    if (active === null) {
      query = query.eq("active", true);
    } else {
      query = query.eq("active", active === "true");
    }

    const { data, error } = id ? await query.maybeSingle() : await query;

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    if (id && !data) {
      return new Response(
        JSON.stringify({ error: "La categoría no existe" }),
        { status: 404, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseData = convertToCamelCase(data);
    return new Response(
      JSON.stringify(camelCaseData),
      { status: 200, headers: { "Content-Type": "application/json" } },
    );
  } catch (_err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } },
    );
  }
}

async function handlePostProductCategory(req: Request): Promise<Response> {
  try {
    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody) as Record<string, any>;

    if (!body.name || !body.product_type_id) {
      return new Response(
        JSON.stringify({
          error: "Los campos 'name' y 'productTypeId' son obligatorios",
        }),
        { status: 400, headers: { "Content-Type": "application/json" } },
      );
    }

    const { data, error } = await supabase
      .from("product_category")
      .insert({
        name: body.name,
        description: body.description,
        product_type_id: body.product_type_id,
        order_id: body.order_id,
        active: body.active ?? true,
      })
      .select(`
        *,
        product_type:product_type_id(id, name)
      `)
      .single();

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseData = convertToCamelCase(data);
    return new Response(
      JSON.stringify(camelCaseData),
      { status: 201, headers: { "Content-Type": "application/json" } },
    );
  } catch (_err) {
    return new Response(
      JSON.stringify({ error: "Payload JSON inválido" }),
      { status: 400, headers: { "Content-Type": "application/json" } },
    );
  }
}

async function handlePutProductCategory(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } },
      );
    }

    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseBody = await req.json();
    const body = convertToSnakeCase(camelCaseBody) as Record<string, any>;

    const updatePayload: Record<string, unknown> = {};

    if ("name" in body) {
      updatePayload.name = body.name;
    }
    if ("description" in body) {
      updatePayload.description = body.description;
    }
    if ("product_type_id" in body) {
      updatePayload.product_type_id = body.product_type_id;
    }
    if ("order_id" in body) {
      updatePayload.order_id = body.order_id;
    }
    if ("active" in body) {
      updatePayload.active = body.active;
    }

    const { data, error } = await supabase
      .from("product_category")
      .update(updatePayload)
      .eq("id", id)
      .select(`
        *,
        product_type:product_type_id(id, name)
      `)
      .single();

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseData = convertToCamelCase(data);
    return new Response(
      JSON.stringify(camelCaseData),
      { status: 200, headers: { "Content-Type": "application/json" } },
    );
  } catch (_err) {
    return new Response(
      JSON.stringify({ error: "Payload JSON inválido" }),
      { status: 400, headers: { "Content-Type": "application/json" } },
    );
  }
}

async function handleDeleteProductCategory(req: Request): Promise<Response> {
  try {
    const url = new URL(req.url);
    const id = url.searchParams.get("id");

    if (!id) {
      return new Response(
        JSON.stringify({ error: "Falta el parámetro 'id' en la URL" }),
        { status: 400, headers: { "Content-Type": "application/json" } },
      );
    }

    const { data, error } = await supabase
      .from("product_category")
      .update({ active: false })
      .eq("id", id)
      .select(`
        *,
        product_type:product_type_id(id, name)
      `)
      .single();

    if (error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    const camelCaseData = convertToCamelCase(data);
    return new Response(
      JSON.stringify(camelCaseData),
      { status: 200, headers: { "Content-Type": "application/json" } },
    );
  } catch (_err) {
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } },
    );
  }
}

serveWithCors(async (req: Request) => {
  if (req.method === "GET") {
    return await handleGetProductCategories(req);
  }

  switch (req.method) {
    case "POST":
      return await handlePostProductCategory(req);
    case "PUT":
      return await handlePutProductCategory(req);
    case "DELETE":
      return await handleDeleteProductCategory(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } },
      );
  }
});
