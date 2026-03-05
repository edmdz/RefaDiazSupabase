const fs = require("fs");
const path = require("path");

function parseArgs(argv) {
  const positional = [];
  const options = {};

  for (let i = 0; i < argv.length; i += 1) {
    const current = argv[i];

    if (!current.startsWith("--")) {
      positional.push(current);
      continue;
    }

    const [rawKey, inlineValue] = current.slice(2).split("=");
    const nextValue = inlineValue ?? argv[i + 1];
    const consumesNext = inlineValue === undefined && nextValue && !nextValue.startsWith("--");

    options[rawKey] = inlineValue ?? (consumesNext ? nextValue : "true");

    if (consumesNext) {
      i += 1;
    }
  }

  return { positional, options };
}

function getContentType(fileName) {
  const ext = path.extname(fileName).toLowerCase();

  switch (ext) {
    case ".jpg":
    case ".jpeg":
      return "image/jpeg";
    case ".png":
      return "image/png";
    case ".webp":
      return "image/webp";
    case ".pdf":
      return "application/pdf";
    case ".txt":
      return "text/plain";
    case ".svg":
      return "image/svg+xml";
    default:
      return "application/octet-stream";
  }
}

async function uploadFile(config, bucketName, folderPath, fileName, fileLocalPath) {
  try {
    const fileContent = fs.readFileSync(fileLocalPath);
    const fullPath = folderPath ? `${folderPath}/${fileName}` : fileName;

    const response = await fetch(
      `${config.url}/storage/v1/object/${bucketName}/${fullPath}`,
      {
        method: "POST",
        headers: {
          authorization: `Bearer ${config.serviceRoleKey}`,
          apikey: config.serviceRoleKey,
          "x-upsert": "true",
          "content-type": getContentType(fileName),
        },
        body: fileContent,
      }
    );

    if (!response.ok) {
      const errorText = await response.text();
      console.error(`Error subiendo ${fileName} a ${bucketName}/${fullPath}: ${errorText}`);
      return;
    }

    console.log(`Archivo ${fileName} subido a ${bucketName}/${fullPath}`);
  } catch (error) {
    console.error(`Error inesperado subiendo ${fileName}: ${error.message}`);
  }
}

async function uploadFilesFromFolder(config, localFolderPath, bucketName, folderPath) {
  if (!fs.existsSync(localFolderPath)) {
    console.error(`La carpeta ${localFolderPath} no existe`);
    process.exitCode = 1;
    return;
  }

  const files = fs.readdirSync(localFolderPath);

  if (files.length === 0) {
    console.log(`No hay archivos en ${localFolderPath}`);
    return;
  }

  for (const fileName of files) {
    const fileLocalPath = path.join(localFolderPath, fileName);

    if (fs.statSync(fileLocalPath).isFile()) {
      await uploadFile(config, bucketName, folderPath, fileName, fileLocalPath);
    }
  }
}

function getConfig(mode, options) {
  const isLocal = mode === "local";
  const envUrl = isLocal
    ? process.env.SUPABASE_LOCAL_URL || process.env.SUPABASE_URL
    : process.env.SUPABASE_REMOTE_URL || process.env.SUPABASE_URL;
  const envKey = isLocal
    ? process.env.SUPABASE_LOCAL_SERVICE_ROLE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY
    : process.env.SUPABASE_REMOTE_SERVICE_ROLE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;

  return {
    url: options.url || envUrl || (isLocal ? "http://127.0.0.1:54321" : ""),
    serviceRoleKey: options["service-role-key"] || envKey || "",
  };
}

function printUsage(scriptName, mode) {
  console.error(`Uso: node ${scriptName} <ruta-local> <bucket/ruta> [--url <supabase-url>] [--service-role-key <key>]`);
  console.error(`Ejemplo ${mode}: node ${scriptName} ./logos brands/logos`);
}

async function main(mode) {
  const { positional, options } = parseArgs(process.argv.slice(2));
  const [localFolderPath, storagePath] = positional;

  if (!localFolderPath || !storagePath) {
    printUsage(path.basename(process.argv[1]), mode);
    process.exit(1);
  }

  const config = getConfig(mode, options);

  if (!config.url || !config.serviceRoleKey) {
    console.error("Faltan credenciales de Supabase.");
    if (mode === "local") {
      console.error("Configura SUPABASE_LOCAL_SERVICE_ROLE_KEY o SUPABASE_SERVICE_ROLE_KEY.");
      console.error("Opcionalmente configura SUPABASE_LOCAL_URL. Por default usa http://127.0.0.1:54321.");
    } else {
      console.error("Configura SUPABASE_REMOTE_URL y SUPABASE_REMOTE_SERVICE_ROLE_KEY.");
    }
    process.exit(1);
  }

  const [bucketName, ...folderParts] = storagePath.split("/");
  const folderPath = folderParts.join("/");

  console.log(`Subiendo a ${mode}: ${config.url}`);
  await uploadFilesFromFolder(config, localFolderPath, bucketName, folderPath);
  console.log("Subida completada");
}

module.exports = { main };
