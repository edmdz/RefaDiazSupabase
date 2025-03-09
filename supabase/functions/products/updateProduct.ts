import { supabase } from "./config.ts";

/**
 * PUT /products?id=<ID>
 * Actualiza un producto existente con todas sus relaciones.
 * 
 * Payload esperado:
 * {
 *   "name": "Nombre Actualizado",
 *   "comments": "Descripción actualizada",
 *   "stockCount": 15,
 *   "dpi": "222",
 *   "productTypeId": 1,
 *   "brand": { "file": {} },
 *   "files": [
 *     {
 *       "id": 123,  // Si tiene ID, actualiza el archivo existente
 *       "name": "archivo-existente.png",
 *       "mimeType": "image/png",
 *       "storagePath": "/products/images/archivo-existente.png",
 *       "orderId": 1
 *     },
 *     {
 *       "name": "nuevo-archivo.png",  // Si no tiene ID, crea un nuevo archivo
 *       "mimeType": "image/png",
 *       "storagePath": "/products/images/nuevo-archivo.png",
 *       "orderId": 2
 *     }
 *   ],
 *   "providers": [
 *     {
 *       "providerId": 3,  // Proveedor existente
 *       "numSeries": "DPI1214-ACTUALIZADO",
 *       "price": {  // Si se incluye price, crea un nuevo precio
 *         "description": "Precio de compra actualizado", 
 *         "cost": "$2,500.00" 
 *       }
 *     },
 *     {
 *       "providerId": 4,  // Nuevo proveedor
 *       "numSeries": "NUEVO-SERIE",
 *       "price": { 
 *         "description": "Precio de nuevo proveedor", 
 *         "cost": "$1,800.00" 
 *       }
 *     }
 *   ],
 *   "prices": [
 *     {
 *       "priceId": 9  // Precio existente que se mantiene
 *     },
 *     {
 *       "price": {  // Nuevo precio
 *         "description": "NUEVO PRECIO", 
 *         "cost": "$4,200.00" 
 *       }
 *     }
 *   ],
 *   "carModels": [
 *     {
 *       "carModelId": 6,
 *       "initialYear": 2011,
 *       "lastYear": 2015,  // Año actualizado
 *       "carModel": {
 *         "id": 6,
 *         "name": "F150",
 *         "brand": { "id": 16, "name": "Ford" }
 *       }
 *     },
 *     {
 *       "carModelId": 10,  // Nuevo modelo
 *       "initialYear": 2018,
 *       "lastYear": 2020,
 *       "carModel": {
 *         "id": 10,
 *         "name": "Mustang",
 *         "brand": { "id": 16, "name": "Ford" }
 *       }
 *     }
 *   ]
 * }
 * 
 * Nota: 
 * - Los elementos que no se incluyen en los arrays se eliminarán (enfoque de reemplazo completo).
 * - Para archivos y precios, si tienen ID se actualizan, si no tienen ID se crean nuevos.
 * - Para proveedores, se identifican por providerId.
 * - Para modelos de carro, se recrean todas las relaciones.
 */
export async function handlePutProduct(req: Request): Promise<Response> {
  try {
    const contentType = req.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      return new Response(
        JSON.stringify({ error: "El Content-Type debe ser application/json" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    // Obtener el ID del producto de la URL
    const url = new URL(req.url);
    const productId = parseInt(url.searchParams.get("id") || "0");

    if (isNaN(productId) || productId <= 0) {
      return new Response(
        JSON.stringify({ error: "ID de producto inválido" }),
        { status: 400, headers: { "Content-Type": "application/json" } }
      );
    }

    const productData = await req.json();
    
    // Llamar al procedimiento almacenado para actualizar el producto con todas sus relaciones
    const { data, error } = await supabase.rpc(
      'update_product_with_relations',
      { 
        p_product_id: productId,
        product_data: productData 
      }
    );
    
    if (error) {
      console.error("Error al actualizar el producto:", error);
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      );
    }
    
    return new Response(
      JSON.stringify(data),
      { status: 200, headers: { "Content-Type": "application/json" } }
    );
  } catch (err) {
    console.error("Error al procesar la solicitud:", err);
    return new Response(
      JSON.stringify({ error: "Error al procesar la solicitud" }),
      { status: 400, headers: { "Content-Type": "application/json" } }
    );
  }
} 