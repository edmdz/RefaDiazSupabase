// Interfaces para los productos

// Interfaz para el cuerpo de la solicitud en formato camelCase
export interface ProductRequestBody {
  name: string;
  comments?: string;
  stockCount?: number;
  dpi?: string;
  productTypeId: number;
  productCategoryId?: number | null;
  parentProductId?: number;
  active?: boolean;
  [key: string]: any;
}

// Interfaz para el cuerpo en formato snake_case
export interface SnakeCaseProductBody {
  name: string;
  comments?: string;
  stock_count?: number;
  dpi?: string;
  product_type_id: number;
  product_category_id?: number | null;
  parent_product_id?: number;
  active?: boolean;
  [key: string]: any;
}
