// Importa las definiciones de tipos y la API del runtime de Supabase
import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { serveWithCors } from "../_shared/server.ts";

// Importar los manejadores de endpoints
import { handleGetModels } from "./getModels.ts";
import { handleGetModelById } from "./getModelById.ts";
import { handlePutModel } from "./updateModel.ts";
import { handleDeleteModel } from "./deleteModel.ts";
import { handlePostModel } from "./createModel.ts";
import { handleGetModelProducts } from "./getModelProducts.ts";

console.log("Edge Function 'models' iniciada...");

// Función principal que enruta la petición según el método HTTP
serveWithCors(async (req: Request) => {
  const url = new URL(req.url);
  const path = url.pathname.split("/").filter(Boolean);
  
  // Manejar el endpoint /models/products
  if (path.length > 1 && path[1] === "products") {
    if (req.method === "GET") {
      return await handleGetModelProducts(req);
    } else {
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
    }
  }
  
  // Manejar los endpoints principales de /models
  if (req.method === "GET") {
    if (url.searchParams.get("id")) {
      return await handleGetModelById(req);
    } else {
      return await handleGetModels(req);
    }
  }

  switch (req.method) {
    case "POST":
      return await handlePostModel(req);
    case "PUT":
      return await handlePutModel(req);
    case "DELETE":
      return await handleDeleteModel(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
  }
});