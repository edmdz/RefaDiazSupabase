// generate-bucket-policies-sql.js
const SUPABASE_BUCKETS = {
  PRODUCTS: 'products',
  BRANDS: 'brands',
  RADIATORS: 'radiators',
  PROVIDERS: 'providers',
  CAR_MODELS: 'car-models',
};

function generatePoliciesSql(bucketName) {
  return [
    `DROP POLICY IF EXISTS "Public read access on ${bucketName}" ON storage.objects;`,
    `DROP POLICY IF EXISTS "Authenticated write access on ${bucketName}" ON storage.objects;`,
    `DROP POLICY IF EXISTS "Authenticated update access on ${bucketName}" ON storage.objects;`,
    `DROP POLICY IF EXISTS "Authenticated delete access on ${bucketName}" ON storage.objects;`,

    `CREATE POLICY "Public read access on ${bucketName}" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = '${bucketName}');`,

    `CREATE POLICY "Authenticated write access on ${bucketName}" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = '${bucketName}');`,

    `CREATE POLICY "Authenticated update access on ${bucketName}" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = '${bucketName}');`,

    `CREATE POLICY "Authenticated delete access on ${bucketName}" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = '${bucketName}');`,
  ].join('\n');
}

for (const bucketName of Object.values(SUPABASE_BUCKETS)) {
  console.log(`-- Políticas para ${bucketName}\n`);
  console.log(generatePoliciesSql(bucketName));
  console.log('\n');
}