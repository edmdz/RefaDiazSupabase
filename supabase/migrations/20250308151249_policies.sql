-- Políticas para products

DROP POLICY IF EXISTS "Public read access on products" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated write access on products" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated update access on products" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated delete access on products" ON storage.objects;
CREATE POLICY "Public read access on products" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = 'products');
CREATE POLICY "Authenticated write access on products" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = 'products');
CREATE POLICY "Authenticated update access on products" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = 'products');
CREATE POLICY "Authenticated delete access on products" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = 'products');


-- Políticas para brands

DROP POLICY IF EXISTS "Public read access on brands" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated write access on brands" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated update access on brands" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated delete access on brands" ON storage.objects;
CREATE POLICY "Public read access on brands" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = 'brands');
CREATE POLICY "Authenticated write access on brands" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = 'brands');
CREATE POLICY "Authenticated update access on brands" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = 'brands');
CREATE POLICY "Authenticated delete access on brands" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = 'brands');


-- Políticas para radiators

DROP POLICY IF EXISTS "Public read access on radiators" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated write access on radiators" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated update access on radiators" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated delete access on radiators" ON storage.objects;
CREATE POLICY "Public read access on radiators" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = 'radiators');
CREATE POLICY "Authenticated write access on radiators" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = 'radiators');
CREATE POLICY "Authenticated update access on radiators" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = 'radiators');
CREATE POLICY "Authenticated delete access on radiators" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = 'radiators');


-- Políticas para providers

DROP POLICY IF EXISTS "Public read access on providers" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated write access on providers" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated update access on providers" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated delete access on providers" ON storage.objects;
CREATE POLICY "Public read access on providers" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = 'providers');
CREATE POLICY "Authenticated write access on providers" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = 'providers');
CREATE POLICY "Authenticated update access on providers" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = 'providers');
CREATE POLICY "Authenticated delete access on providers" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = 'providers');


-- Políticas para car-models

DROP POLICY IF EXISTS "Public read access on car-models" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated write access on car-models" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated update access on car-models" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated delete access on car-models" ON storage.objects;
CREATE POLICY "Public read access on car-models" ON storage.objects 
     FOR SELECT 
     TO anon, authenticated 
     USING (bucket_id = 'car-models');
CREATE POLICY "Authenticated write access on car-models" ON storage.objects 
     FOR INSERT 
     TO authenticated 
     WITH CHECK (bucket_id = 'car-models');
CREATE POLICY "Authenticated update access on car-models" ON storage.objects 
     FOR UPDATE 
     TO authenticated 
     USING (bucket_id = 'car-models');
CREATE POLICY "Authenticated delete access on car-models" ON storage.objects 
     FOR DELETE 
     TO authenticated 
     USING (bucket_id = 'car-models');


