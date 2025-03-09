import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

// Obtén las variables de entorno necesarias para la conexión
const supabaseUrl = Deno.env.get("SUPABASE_URL");
const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");

if (!supabaseUrl || !supabaseKey) {
  console.error("Error: Falta SUPABASE_URL o SUPABASE_SERVICE_ROLE_KEY en las variables de entorno.");
  Deno.exit(1);
}

// Inicializa el cliente de Supabase
export const supabase = createClient(supabaseUrl, supabaseKey); 