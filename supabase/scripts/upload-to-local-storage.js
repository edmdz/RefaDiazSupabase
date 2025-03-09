// upload-to-local-storage.js
const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Configuración de Supabase
const SUPABASE_URL = 'https://lgebdhuewexxbvzeohkz.supabase.co'; // URL de tu instancia local
const SUPABASE_SERVICE_ROLE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxnZWJkaHVld2V4eGJ2emVvaGt6Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczOTAzMzAzNCwiZXhwIjoyMDU0NjA5MDM0fQ.1hFD1Gm_P1Wi_Ske8ozzqF4QfRg-15i6GjgPfjh7p78'; // Reemplaza con la clave del .env
const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY);

// Obtener argumentos desde la línea de comandos
const [,, localFolderPath, storagePath] = process.argv;

// Validar argumentos
if (!localFolderPath || !storagePath) {
  console.error('Uso: node upload-to-local-storage.js <ruta-local> <ruta-storage>');
  console.error('Ejemplo: node upload-to-local-storage.js ./files/images products/images');
  process.exit(1);
}

// Extraer bucket y carpeta de la ruta de almacenamiento
const [bucketName, ...folderParts] = storagePath.split('/');
const folderPath = folderParts.join('/');

// Función para subir un archivo
async function uploadFile(bucketName, folderPath, fileName, fileLocalPath) {
  try {
    const fileContent = fs.readFileSync(fileLocalPath);
    const fullPath = folderPath ? `${folderPath}/${fileName}` : fileName;

    const { data, error } = await supabase.storage
      .from(bucketName)
      .upload(fullPath, fileContent, {
        upsert: true, // Sobrescribe si ya existe
        contentType: getContentType(fileName), // Detectar tipo de archivo
      });

    if (error) {
      console.error(`Error subiendo ${fileName} a ${bucketName}/${fullPath}:`, error.message);
    } else {
      console.log(`Archivo ${fileName} subido a ${bucketName}/${fullPath}`);
    }
  } catch (err) {
    console.error('Error inesperado:', err.message);
  }
}

// Función para subir todos los archivos de una carpeta
async function uploadFilesFromFolder(localFolderPath, bucketName, folderPath) {
  try {
    // Verificar que la carpeta local existe
    if (!fs.existsSync(localFolderPath)) {
      console.error(`La carpeta ${localFolderPath} no existe`);
      return;
    }

    // Leer todos los archivos de la carpeta
    const files = fs.readdirSync(localFolderPath);

    if (files.length === 0) {
      console.log(`No hay archivos en ${localFolderPath}`);
      return;
    }

    // Subir cada archivo
    for (const fileName of files) {
      const fileLocalPath = path.join(localFolderPath, fileName);
      if (fs.statSync(fileLocalPath).isFile()) { // Solo subir archivos, no subcarpetas
        await uploadFile(bucketName, folderPath, fileName, fileLocalPath);
      }
    }
  } catch (err) {
    console.error('Error procesando la carpeta:', err.message);
  }
}

// Función auxiliar para detectar el tipo de contenido
function getContentType(fileName) {
  const ext = path.extname(fileName).toLowerCase();
  switch (ext) {
    case '.jpg':
    case '.jpeg':
      return 'image/jpeg';
    case '.png':
      return 'image/png';
    case '.pdf':
      return 'application/pdf';
    case '.txt':
      return 'text/plain';
    default:
      return 'application/octet-stream';
  }
}

// Ejecutar la subida
uploadFilesFromFolder(localFolderPath, bucketName, folderPath).then(() => {
  console.log('Subida completada');
});