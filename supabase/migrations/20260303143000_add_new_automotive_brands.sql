WITH new_brands(id, name, mime_type, storage_path, file_id) AS (
  VALUES
    (49, 'BYD', 'image/png', '/brands/logos/byd.png', 122),
    (50, 'Changan', 'image/png', '/brands/logos/changan.png', 123),
    (51, 'Chirey', 'image/png', '/brands/logos/chirey.png', 124),
    (52, 'GAC', 'image/png', '/brands/logos/gac.png', 125),
    (53, 'Geely', 'image/png', '/brands/logos/geely.png', 126),
    (54, 'JAC', 'image/png', '/brands/logos/jac.png', 127),
    (55, 'Jetour', 'image/png', '/brands/logos/jetour.png', 128),
    (56, 'Omoda', 'image/png', '/brands/logos/omoda.png', 129)
),
inserted_brands AS (
  INSERT INTO public.brand (id, name, brand_type_id, active)
  SELECT nb.id, nb.name, 1, true
  FROM new_brands nb
  WHERE NOT EXISTS (
    SELECT 1
    FROM public.brand b
    WHERE b.id = nb.id
       OR (lower(b.name) = lower(nb.name) AND b.brand_type_id = 1)
  )
  RETURNING id, name
),
resolved_brands AS (
  SELECT b.id, b.name, nb.file_id, nb.mime_type, nb.storage_path
  FROM public.brand b
  JOIN new_brands nb
    ON nb.id = b.id
       OR (lower(nb.name) = lower(b.name) AND b.brand_type_id = 1)
  WHERE b.brand_type_id = 1
)
INSERT INTO public.file (id, name, mime_type, storage_path, object_id, order_id, file_type_id, active)
SELECT
  rb.file_id,
  rb.name || ' Logo',
  rb.mime_type,
  rb.storage_path,
  rb.id,
  NULL,
  1,
  true
FROM resolved_brands rb
WHERE NOT EXISTS (
  SELECT 1
  FROM public.file f
  WHERE f.id = rb.file_id
     OR (
       f.object_id = rb.id
       AND f.file_type_id = 1
       AND lower(f.storage_path) = lower(rb.storage_path)
     )
);
