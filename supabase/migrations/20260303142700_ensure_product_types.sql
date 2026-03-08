INSERT INTO public.product_type (id, name, active)
SELECT 1, 'RADIATOR', true
WHERE NOT EXISTS (
  SELECT 1
  FROM public.product_type
  WHERE id = 1
     OR lower(name) = 'radiator'
);

SELECT pg_catalog.setval(
  '"public"."product_type_id_seq"',
  (SELECT COALESCE(MAX(id), 1) FROM public.product_type),
  true
);
