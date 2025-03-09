# Funciones Edge de Supabase

Este directorio contiene las funciones Edge de Supabase para el sistema RefaDiazSystem.

## Estructura

- `_shared/`: Contiene utilidades compartidas entre todas las funciones
  - `server.ts`: Configuración del servidor con CORS
  - `cors.ts`: Configuración de CORS
  - `utils.ts`: Utilidades generales, incluyendo la conversión entre camelCase y snake_case

- `brands/`: Endpoints para gestionar marcas
- `files/`: Endpoints para gestionar archivos
- `persons/`: Endpoints para gestionar personas
- `login/`: Endpoints para autenticación
- `logout/`: Endpoints para cerrar sesión
- `users/`: Endpoints para gestionar usuarios

## Convención de Nomenclatura

Todas las APIs siguen estas convenciones:

1. **Recepción de datos**: Los datos enviados por el cliente deben estar en formato camelCase. La API los convierte automáticamente a snake_case antes de enviarlos a la base de datos.

2. **Envío de datos**: Los datos obtenidos de la base de datos (en snake_case) se convierten automáticamente a camelCase antes de enviarlos al cliente.

### Ejemplo

**Datos en la base de datos (snake_case):**
```json
{
  "id": 1,
  "first_name": "Juan",
  "last_name": "Pérez",
  "created_at": "2023-01-01T00:00:00Z"
}
```

**Datos enviados al cliente (camelCase):**
```json
{
  "id": 1,
  "firstName": "Juan",
  "lastName": "Pérez",
  "createdAt": "2023-01-01T00:00:00Z"
}
```

**Datos recibidos del cliente (camelCase):**
```json
{
  "firstName": "Juan",
  "lastName": "Pérez",
  "email": "juan.perez@example.com"
}
```

**Datos convertidos para la base de datos (snake_case):**
```json
{
  "first_name": "Juan",
  "last_name": "Pérez",
  "email": "juan.perez@example.com"
}
```

## Implementación

La conversión entre formatos se realiza mediante las siguientes funciones definidas en `_shared/utils.ts`:

1. `convertToCamelCase`: Convierte de snake_case a camelCase (para respuestas)
2. `convertToSnakeCase`: Convierte de camelCase a snake_case (para solicitudes)

Estas funciones:
- Manejan recursivamente objetos anidados y arrays
- Preservan los valores primitivos (números, booleanos, etc.)
- Se aplican automáticamente en todos los endpoints

## Uso

Para implementar esta funcionalidad en nuevos endpoints:

1. Importar las funciones de conversión:
```typescript
import { convertToCamelCase, convertToSnakeCase } from "../_shared/utils.ts";
```

2. Convertir los datos recibidos del cliente antes de usarlos:
```typescript
const camelCaseBody = await req.json();
const body = convertToSnakeCase(camelCaseBody);
const { data, error } = await supabase.from("table").insert(body);
```

3. Convertir los datos de la base de datos antes de enviarlos al cliente:
```typescript
const { data, error } = await supabase.from("table").select("*");
const camelCaseData = convertToCamelCase(data);
return new Response(JSON.stringify(camelCaseData), { status: 200 });
``` 