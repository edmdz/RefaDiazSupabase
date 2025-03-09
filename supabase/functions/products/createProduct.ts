import { convertToCamelCase, convertToSnakeCase } from "../_shared/utils.ts";
import { ProductRequestBody, SnakeCaseProductBody } from "./types.ts";
import { supabase } from "./config.ts";

/**
 * POST /products
 * Crea un nuevo producto en la tabla "product" con todas sus relaciones.
 * 
 * Payload esperado:
 * {
 *   "name": "Nombre del Producto",
 *   "comments": "Descripción del producto",
 *   "stockCount": 10,
 *   "dpi": "222",
 *   "productTypeId": 1,
 *   "brand": { "file": {} },
 *   "files": [
 *     {
 *       "name": "nombre-del-archivo.png",
 *       "mimeType": "image/png",
 *       "storagePath": "/products/images/nombre-del-archivo.png",
 *       "orderId": 1
 *     }
 *   ],
 *   "providers": [
 *     {
 *       "providerId": 3,
 *       "numSeries": "DPI1214",
 *       "price": { 
 *         "description": "Precio de compra", 
 *         "cost": "$2,100.00" 
 *       }
 *     }
 *   ],
 *   "prices": [
 *     {
 *       "price": { 
 *         "description": "RADIADOR NUEVO SUELTO", 
 *         "cost": "$3,500.00" 
 *       }
 *     }
 *   ],
 *   "carModels": [
 *     {
 *       "carModelId": 6,
 *       "initialYear": 2011,
 *       "lastYear": 2014,
 *       "carModel": {
 *         "id": 6,
 *         "name": "F150",
 *         "brand": { "id": 16, "name": "Ford" }
 *       }
 *     }
 *   ]
 * }
 * 
 * Nota: Los precios y archivos se crean automáticamente, no es necesario proporcionar IDs para ellos.
 * Si se proporciona un priceId existente, se utilizará ese precio en lugar de crear uno nuevo.
 */
export async function handlePostProduct(req: Request): Promise<Response> {
  try {
    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const productData = await req.json();
    
    // Validar que el cuerpo tenga los campos requeridos
    if (!productData.name || !productData.productTypeId) {
      return new Response(
        JSON.stringify({ error: "Los campos 'name' y 'productTypeId' son obligatorios" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }
    
    // Llamar al procedimiento almacenado para crear el producto con todas sus relaciones
    const { data, error } = await supabase.rpc(
      'create_product_with_relations',
      { product_data: productData }
    );
    
    if (error) {
      console.error("Error al crear el producto:", error);
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }
    
    return new Response(
      JSON.stringify(data),
      { status: 201, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    console.error("Error al procesar la solicitud:", err);
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 