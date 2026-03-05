INSERT INTO public.brand_type (id, type, active)
SELECT 1, 'Automotive', true
WHERE NOT EXISTS (
  SELECT 1
  FROM public.brand_type
  WHERE id = 1
     OR lower(type) = 'automotive'
);

INSERT INTO public.brand_type (id, type, active)
SELECT 2, 'Heavy-Duty', true
WHERE NOT EXISTS (
  SELECT 1
  FROM public.brand_type
  WHERE id = 2
     OR lower(type) = 'heavy-duty'
);
