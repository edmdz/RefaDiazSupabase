// Interfaces para los modelos

// Interfaz para el cuerpo de la solicitud en formato camelCase
export interface ModelRequestBody {
  name: string;
  brandId: number;
  active?: boolean;
  [key: string]: any;
}

// Interfaz para el cuerpo en formato snake_case
export interface SnakeCaseModelBody {
  name: string;
  brand_id: number;
  active?: boolean;
  [key: string]: any;
} 