// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts"

// Importar los manejadores de endpoints
import { handleGetProducts } from "./getProducts.ts";
import { handleGetProductById } from "./getProductById.ts";
import { handlePutProduct } from "./updateProduct.ts";
import { handleDeleteProduct } from "./deleteProduct.ts";
import { handlePostProduct } from "./createProduct.ts";
import { serveWithCors } from "../_shared/server.ts";

console.log("Edge Function 'products' iniciada...")

// Función principal que enruta la petición según el método HTTP
serveWithCors(async (req: Request) => {
  // Manejar los endpoints principales de /products
  if (req.method === "GET") {
    const url = new URL(req.url);
    if (url.searchParams.get("id")) {
      return await handleGetProductById(req);
    } else {
      return await handleGetProducts(req);
    }
  }

  switch (req.method) {
    case "POST":
      return await handlePostProduct(req);
    case "PUT":
      return await handlePutProduct(req);
    case "DELETE":
      return await handleDeleteProduct(req);
    default:
      return new Response(
        JSON.stringify({ error: "Método no permitido" }),
        { status: 405, headers: { "Content-Type": "application/json" } }
      );
  }
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/products' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
