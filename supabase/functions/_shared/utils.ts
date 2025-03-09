/**
 * Convierte una cadena de snake_case a camelCase
 * @param str Cadena en formato snake_case
 * @returns Cadena convertida a camelCase
 */
export function snakeToCamel(str: string): string {
  return str.replace(/_([a-z])/g, (_, letter) => letter.toUpperCase());
}

/**
 * Convierte una cadena de camelCase a snake_case
 * @param str Cadena en formato camelCase
 * @returns Cadena convertida a snake_case
 */
export function camelToSnake(str: string): string {
  return str.replace(/[A-Z]/g, letter => `_${letter.toLowerCase()}`);
}

/**
 * Convierte recursivamente todas las claves de un objeto de snake_case a camelCase
 * @param obj Objeto con claves en formato snake_case
 * @returns Nuevo objeto con claves en formato camelCase
 */
export function convertToCamelCase<T>(obj: any): T {
  if (obj === null || obj === undefined || typeof obj !== 'object') {
    return obj;
  }

  if (Array.isArray(obj)) {
    return obj.map(item => convertToCamelCase(item)) as unknown as T;
  }

  const camelCaseObj: Record<string, any> = {};
  
  for (const key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      const camelKey = snakeToCamel(key);
      camelCaseObj[camelKey] = convertToCamelCase(obj[key]);
    }
  }
  
  return camelCaseObj as T;
}

/**
 * Convierte recursivamente todas las claves de un objeto de camelCase a snake_case
 * @param obj Objeto con claves en formato camelCase
 * @returns Nuevo objeto con claves en formato snake_case
 */
export function convertToSnakeCase<T>(obj: any): T {
  if (obj === null || obj === undefined || typeof obj !== 'object') {
    return obj;
  }

  if (Array.isArray(obj)) {
    return obj.map(item => convertToSnakeCase(item)) as unknown as T;
  }

  const snakeCaseObj: Record<string, any> = {};
  
  for (const key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      const snakeKey = camelToSnake(key);
      snakeCaseObj[snakeKey] = convertToSnakeCase(obj[key]);
    }
  }
  
  return snakeCaseObj as T;
}

/**
 * Calcula la similitud entre dos cadenas de texto usando la distancia de Levenshtein
 * @param str1 Primera cadena
 * @param str2 Segunda cadena
 * @returns Valor entre 0 y 1, donde 1 significa que las cadenas son idénticas
 */
export function calculateStringSimilarity(str1: string, str2: string): number {
  // Normalizar las cadenas: convertir a minúsculas y eliminar espacios extras
  const normalizedStr1 = str1.toLowerCase().trim();
  const normalizedStr2 = str2.toLowerCase().trim();
  
  // Si alguna cadena está vacía, devolver 0 si ambas están vacías, o 0 si solo una está vacía
  if (normalizedStr1.length === 0 || normalizedStr2.length === 0) {
    return normalizedStr1.length === normalizedStr2.length ? 1 : 0;
  }
  
  // Matriz para la programación dinámica
  const matrix: number[][] = [];
  
  // Inicializar la primera fila
  for (let i = 0; i <= normalizedStr2.length; i++) {
    matrix[0] = matrix[0] || [];
    matrix[0][i] = i;
  }
  
  // Inicializar la primera columna
  for (let i = 0; i <= normalizedStr1.length; i++) {
    matrix[i] = matrix[i] || [];
    matrix[i][0] = i;
  }
  
  // Llenar la matriz
  for (let i = 1; i <= normalizedStr1.length; i++) {
    for (let j = 1; j <= normalizedStr2.length; j++) {
      const cost = normalizedStr1[i - 1] === normalizedStr2[j - 1] ? 0 : 1;
      matrix[i][j] = Math.min(
        matrix[i - 1][j] + 1,      // eliminación
        matrix[i][j - 1] + 1,      // inserción
        matrix[i - 1][j - 1] + cost // sustitución
      );
    }
  }
  
  // Calcular la distancia de Levenshtein
  const levenshteinDistance = matrix[normalizedStr1.length][normalizedStr2.length];
  
  // Calcular la similitud como 1 - (distancia / longitud máxima)
  const maxLength = Math.max(normalizedStr1.length, normalizedStr2.length);
  return 1 - levenshteinDistance / maxLength;
} 