INSERT INTO public.file_type (id, name, active)
SELECT 1, 'Brand Image', true
WHERE NOT EXISTS (
  SELECT 1
  FROM public.file_type
  WHERE id = 1
     OR lower(name) = 'brand image'
);

INSERT INTO public.file_type (id, name, active)
SELECT 2, 'Product Image', true
WHERE NOT EXISTS (
  SELECT 1
  FROM public.file_type
  WHERE id = 2
     OR lower(name) = 'product image'
);
