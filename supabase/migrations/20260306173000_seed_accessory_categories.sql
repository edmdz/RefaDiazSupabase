WITH accessory_type AS (
    SELECT id
    FROM public.product_type
    WHERE lower(name) = 'accesorio'
    LIMIT 1
),
seed_categories(name, description, order_id) AS (
    VALUES
        ('Tubos', 'Categoria semilla para accesorios tipo tubo', 1),
        ('Mangueras', 'Categoria semilla para accesorios tipo manguera', 2),
        ('Otros', 'Categoria semilla para accesorios varios', 3)
)
INSERT INTO public.product_category (name, description, product_type_id, order_id, active)
SELECT
    sc.name,
    sc.description,
    at.id,
    sc.order_id,
    TRUE
FROM seed_categories sc
CROSS JOIN accessory_type at
WHERE NOT EXISTS (
    SELECT 1
    FROM public.product_category pc
    WHERE pc.product_type_id = at.id
      AND lower(pc.name) = lower(sc.name)
);
