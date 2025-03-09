// sync-storage-to-cloud.js
const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const SUPABASE_URL = 'https://tu-proyecto.supabase.co'; // URL de tu proyecto en la nube
const SUPABASE_SERVICE_ROLE_KEY = 'tu-service-role-key-de-la-nube';
const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY);

const SUPABASE_BUCKETS = {
  PRODUCTS: 'products',
  BRANDS: 'brands',
  RADIATORS: 'radiators',
  PROVIDERS: 'providers',
  CAR_MODELS: 'car-models',
};

const SUPABASE_PATHS = {
  PRODUCTS: { IMAGES: 'images', DOCUMENTS: 'documents' },
  BRANDS: { IMAGES: 'images', LOGOS: 'logos' },
  RADIATORS: { IMAGES: 'images', TECHNICAL_SHEETS: 'technical-sheets' },
  PROVIDERS: { IMAGES: 'images', LOGOS: 'logos' },
  CAR_MODELS: { IMAGES: 'images' },
};

async function syncStorageToCloud() {
  // Crear buckets en la nube si no existen
  for (const bucketName of Object.values(SUPABASE_BUCKETS)) {
    const { error } = await supabase.storage.createBucket(bucketName, { public: false });
    if (error && error.status !== 409) {
      console.error(`Error creando ${bucketName}: ${error.message}`);
    } else {
      console.log(`Bucket ${bucketName} listo en la nube`);
    }
  }

  // Sincronizar carpetas y archivos
  for (const [bucketKey, bucketName] of Object.entries(SUPABASE_BUCKETS)) {
    const paths = SUPABASE_PATHS[bucketKey];
    for (const folder of Object.values(paths)) {
      const filePath = `${folder}/.keep`;
      const localFilePath = path.join(__dirname, 'local-files', bucketName, filePath);

      // Crear un archivo vacío localmente si no existe
      if (!fs.existsSync(localFilePath)) {
        fs.mkdirSync(path.dirname(localFilePath), { recursive: true });
        fs.writeFileSync(localFilePath, '');
      }

      // Subir el archivo a la nube
      const fileContent = fs.readFileSync(localFilePath);
      const { error } = await supabase.storage
        .from(bucketName)
        .upload(filePath, fileContent, { upsert: true });
      if (error && error.status !== 409) {
        console.error(`Error subiendo ${filePath} a ${bucketName}: ${error.message}`);
      } else {
        console.log(`Archivo ${filePath} subido a ${bucketName}`);
      }
    }
  }
}

syncStorageToCloud().catch(console.error);