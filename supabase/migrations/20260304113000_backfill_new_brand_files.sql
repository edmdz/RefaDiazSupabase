WITH new_brand_files(brand_name, mime_type, storage_path) AS (
  VALUES
    ('BYD', 'image/png', '/brands/logos/byd.png'),
    ('Changan', 'image/png', '/brands/logos/changan.png'),
    ('Chirey', 'image/png', '/brands/logos/chirey.png'),
    ('GAC', 'image/png', '/brands/logos/gac.png'),
    ('Geely', 'image/png', '/brands/logos/geely.png'),
    ('JAC', 'image/png', '/brands/logos/jac.png'),
    ('Jetour', 'image/png', '/brands/logos/jetour.png'),
    ('Omoda', 'image/png', '/brands/logos/omoda.png')
)
INSERT INTO public.file (name, mime_type, storage_path, object_id, order_id, file_type_id, active)
SELECT
  nbf.brand_name || ' Logo',
  nbf.mime_type,
  nbf.storage_path,
  b.id,
  NULL,
  1,
  true
FROM new_brand_files nbf
JOIN public.brand b
  ON lower(b.name) = lower(nbf.brand_name)
WHERE NOT EXISTS (
  SELECT 1
  FROM public.file f
  WHERE f.object_id = b.id
    AND f.file_type_id = 1
);

SELECT pg_catalog.setval('"public"."file_id_seq"', (SELECT COALESCE(MAX(id), 1) FROM public.file), true);
