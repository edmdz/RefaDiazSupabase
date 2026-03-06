CREATE TABLE IF NOT EXISTS public.product_component (
    product_id INT NOT NULL,
    component_product_id INT NOT NULL,
    CONSTRAINT product_component_product_id_fkey
        FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE,
    CONSTRAINT product_component_component_product_id_fkey
        FOREIGN KEY (component_product_id) REFERENCES public.product(id) ON DELETE CASCADE,
    CONSTRAINT product_component_product_id_component_product_id_key
        UNIQUE (product_id, component_product_id)
) INHERITS (public.control_fields);

INSERT INTO public.product_type (name, active)
SELECT 'TAPA', true
WHERE NOT EXISTS (
    SELECT 1
    FROM public.product_type
    WHERE lower(name) = 'tapa'
);

