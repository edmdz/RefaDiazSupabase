---
# 📄 Resumen del Proyecto

Este documento describe el desarrollo de un sistema de gestión y cotización para **Refaccionaria Diaz** (también conocida como Radiadores Diaz).

* **Cliente:** Refaccionaria Diaz.
* **Especialidad:** Venta y reparación de radiadores automotrices.
* **Tipos de Productos Principales:**
    * Radiadores 🚗
    * Tapas de radiador
    * Accesorios (actualmente enfocado en abanicos)

---

## ⚙️ Proceso de Operación Actual (Manual)

El flujo de trabajo actual de la refaccionaria es predominantemente manual y se basa en la comunicación directa con el cliente.

1.  **Contacto Inicial:** Los clientes contactan a la refaccionaria por **teléfono o WhatsApp**.
2.  **Solicitud:** Generalmente, solicitan una cotización para una pieza específica (ej. un radiador para un modelo de auto concreto).
3.  **Búsqueda Manual:** La asistente o los dueños consultan un **libro físico de gran tamaño** que contiene toda la información de compatibilidad de piezas.
4.  **Cotización:** En este libro, identifican la pieza, el proveedor, el costo de adquisición y determinan el precio de venta para cotizar al cliente.
5.  **Servicios Adicionales:** Además de la venta, ofrecen servicios de **instalación y diagnóstico** en el taller.

---

## 🎯 Necesidad y Objetivo del Sistema

El principal objetivo del proyecto es **digitalizar y optimizar el proceso de búsqueda y cotización** para hacerlo más rápido y eficiente.

* **Problema a Resolver:** La dependencia de un registro físico es lenta, propensa a errores y no escalable.
* **Solución Propuesta:** Crear un sistema digital donde toda la información esté centralizada y estructurada.
* **Funcionalidad Clave:**
    * Permitir búsquedas jerárquicas: **Marca de auto -> Modelo -> Piezas compatibles**.
    * Mostrar información detallada del producto: imágenes, descripciones, notas técnicas, proveedores y precios (costo y venta).
    * **Optimizar el tiempo de respuesta** a las solicitudes de cotización de los clientes.

---

## 💻 Estado Actual del Sistema (Frontend)

Ya existe una primera versión funcional del sistema con una interfaz de usuario diseñada para una navegación intuitiva.

### Flujo de Navegación

1.  **Pantalla Inicial:** El usuario selecciona el tipo de producto que desea buscar: **Radiadores, Tapas o Accesorios**.
2.  **Asistente de Búsqueda (Wizard):**
    * Primero, se selecciona la **Marca** del vehículo.
    * Luego, se selecciona el **Modelo** del vehículo.
    * Finalmente, el sistema muestra una lista de los productos correspondientes.
3.  **Búsqueda Directa:** La interfaz cuenta con una **barra de búsqueda** que permite encontrar productos rápidamente. Por ejemplo, al escribir "Civic 2019", el sistema filtra y muestra todos los radiadores cuyo nombre o descripción contenga ese texto.

### Vista de Detalle del Producto

Al seleccionar un producto de la lista, se despliega un panel con información detallada que incluye:

* Galería de **imágenes** del producto.
* Panel de **notas** con comentarios o especificaciones relevantes.
* Lista de **proveedores** que surten la pieza.
* Desglose de **precios** para facilitar la cotización.

---

## 📊 Estructura de Datos (Backend)

La base de datos está diseñada para relacionar los vehículos, productos, proveedores y clientes de manera eficiente. Las entidades principales y sus relaciones se describen a continuación.

Un `product` está asociado a uno o varios `car_model` a través de la tabla intermedia `product_car_model`. Cada `product` puede tener múltiples `price` y ser surtido por distintos `provider`. Los `client` pueden tener `vehicle` registrados, y los `user` del sistema están vinculados a una `person`.

```dbml
Table product_type {
  id int [pk]
  name string
}

Table price {
  id int [pk]
  cost int
  description string
}

Table file_type{
  id int [pk]
  name string
}

Table file {
  id int [pk]
  name string
  mime_type string
  storage_path string
  object_id int
  order_id int
  file_type_id int [ref: > file_type.id]
}

Table product {
  id int [pk]
  name string
  comments string
  stock_count int
  dpi string
  product_type_id int [ref: > product_type.id]
  parent_product_id int [ref: > product.id]
}

Table product_price{
  product_id int [not null, ref: - product.id]
  price_id int [not null, ref: - price.id]
}

Table provider {
  id int [pk]
  name string
  phone_number string
  address string
  comments string
}

Table provider_product {
  product_id int [not null, ref: - product.id]
  price_id int [not null, ref: - price.id]
  provider_id int [not null, ref: - provider.id]
  num_series string
}

table brand_type {
  id int [pk, increment]
  type varchar(100)
}

table brand {
  id int [pk, increment]
  name varchar(300)
  brand_type_id int [not null, ref: > brand_type.id]
}

Table car_model {
  id int [pk]
  name string
  brand_id int [not null, ref: - brand.id]
}

Table vehicle{
  id int [pk]
  model_id int [not null, ref: - car_model.id]
  version string
  year int
}

Table client {
  id int [pk]
  name string
  phone_number int
  comments string
}

Table client_vehicle {
  vehicle_id int [not null, ref: - vehicle.id]
  client_id int [not null, ref: - client.id]
  color string
  plate string
  comments string
}

table person {
  id int [pk, increment]
  name varchar(200)
  last_name varchar(200)
  birth_date date
  email varchar(300)
  phone_number varchar(300)
  address varchar(300)
}

table user {
  id varchar(500) [pk]
  person_id int [ref: > person.id]
}

Table product_car_model {
  product_id int [ref: > product.id]
  car_model_id int [ref: > car_model.id]
  initial_year int
  last_year int
  Indexes {
    (product_id, car_model_id) [pk]
  }
}