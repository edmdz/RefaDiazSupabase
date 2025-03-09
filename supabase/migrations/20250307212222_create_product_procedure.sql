CREATE OR REPLACE FUNCTION create_product_with_relations(
  product_data JSONB
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  new_product_id INT;
  file_record JSONB;
  provider_record JSONB;
  price_record JSONB;
  car_model_record JSONB;
  result JSONB;
BEGIN
  -- Iniciar transacción
  BEGIN
    -- 1. Insertar el producto principal
    INSERT INTO product (
      name,
      comments,
      stock_count,
      dpi,
      product_type_id,
      active
    ) VALUES (
      product_data->>'name',
      product_data->>'comments',
      (product_data->>'stockCount')::INT,
      product_data->>'dpi',
      (product_data->>'productTypeId')::INT,
      COALESCE((product_data->>'active')::BOOLEAN, TRUE)
    )
    RETURNING id INTO new_product_id;

    -- 2. Insertar archivos asociados
    IF product_data ? 'files' AND jsonb_array_length(product_data->'files') > 0 THEN
      FOR file_record IN SELECT * FROM jsonb_array_elements(product_data->'files')
      LOOP
        -- Verificar si el archivo ya existe
        IF NOT EXISTS (SELECT 1 FROM file WHERE id = (file_record->>'id')::INT) THEN
          INSERT INTO file (
            id,
            name,
            mime_type,
            storage_path,
            order_id,
            object_id,
            file_type_id
          ) VALUES (
            (file_record->>'id')::INT,
            file_record->>'name',
            file_record->>'mimeType',
            file_record->>'storagePath',
            (file_record->>'orderId')::INT,
            new_product_id,
            1  -- Asumiendo que 1 es el ID para el tipo de archivo de producto
          );
        END IF;
      END LOOP;
    END IF;

    -- 3. Insertar relaciones con proveedores
    IF product_data ? 'providers' AND jsonb_array_length(product_data->'providers') > 0 THEN
      FOR provider_record IN SELECT * FROM jsonb_array_elements(product_data->'providers')
      LOOP
        INSERT INTO provider_product (
          product_id,
          provider_id,
          price_id,
          num_series
        ) VALUES (
          new_product_id,
          (provider_record->>'providerId')::INT,
          (provider_record->>'priceId')::INT,
          provider_record->>'numSeries'
        );
      END LOOP;
    END IF;

    -- 4. Insertar precios asociados
    IF product_data ? 'prices' AND jsonb_array_length(product_data->'prices') > 0 THEN
      FOR price_record IN SELECT * FROM jsonb_array_elements(product_data->'prices')
      LOOP
        INSERT INTO product_price (
          product_id,
          price_id
        ) VALUES (
          new_product_id,
          (price_record->>'priceId')::INT
        );
      END LOOP;
    END IF;

    -- 5. Insertar relaciones con modelos de carro
    IF product_data ? 'carModels' AND jsonb_array_length(product_data->'carModels') > 0 THEN
      FOR car_model_record IN SELECT * FROM jsonb_array_elements(product_data->'carModels')
      LOOP
        INSERT INTO product_car_model (
          product_id,
          car_model_id,
          initial_year,
          last_year
        ) VALUES (
          new_product_id,
          (car_model_record->>'carModelId')::INT,
          (car_model_record->>'initialYear')::INT,
          (car_model_record->>'lastYear')::INT
        );
      END LOOP;
    END IF;

    -- Obtener el producto completo con todas sus relaciones
    SELECT jsonb_build_object(
      'id', p.id,
      'name', p.name,
      'comments', p.comments,
      'stockCount', p.stock_count,
      'dpi', p.dpi,
      'productTypeId', p.product_type_id,
      'active', p.active,
      'createdAt', p.created_at,
      'updatedAt', p.updated_at,
      'files', COALESCE(
        (
          SELECT jsonb_agg(
            jsonb_build_object(
              'id', f.id,
              'name', f.name,
              'mimeType', f.mime_type,
              'storagePath', f.storage_path,
              'orderId', f.order_id
            )
          )
          FROM file f
          WHERE f.object_id = p.id AND f.file_type_id = 1
        ),
        '[]'::jsonb
      ),
      'providers', COALESCE(
        (
          SELECT jsonb_agg(
            jsonb_build_object(
              'providerId', pp.provider_id,
              'priceId', pp.price_id,
              'numSeries', pp.num_series,
              'provider', jsonb_build_object(
                'id', prov.id,
                'name', prov.name,
                'phoneNumber', prov.phone_number,
                'address', prov.address,
                'comments', prov.comments
              ),
              'price', jsonb_build_object(
                'id', price.id,
                'description', price.description,
                'cost', price.cost
              )
            )
          )
          FROM provider_product pp
          JOIN provider prov ON pp.provider_id = prov.id
          JOIN price ON pp.price_id = price.id
          WHERE pp.product_id = p.id
        ),
        '[]'::jsonb
      ),
      'prices', COALESCE(
        (
          SELECT jsonb_agg(
            jsonb_build_object(
              'productId', pp.product_id,
              'priceId', pp.price_id,
              'price', jsonb_build_object(
                'id', price.id,
                'description', price.description,
                'cost', price.cost
              )
            )
          )
          FROM product_price pp
          JOIN price ON pp.price_id = price.id
          WHERE pp.product_id = p.id
        ),
        '[]'::jsonb
      ),
      'carModels', COALESCE(
        (
          SELECT jsonb_agg(
            jsonb_build_object(
              'carModelId', pcm.car_model_id,
              'initialYear', pcm.initial_year,
              'lastYear', pcm.last_year,
              'carModel', jsonb_build_object(
                'id', cm.id,
                'name', cm.name,
                'brand', jsonb_build_object(
                  'id', b.id,
                  'name', b.name
                )
              )
            )
          )
          FROM product_car_model pcm
          JOIN car_model cm ON pcm.car_model_id = cm.id
          JOIN brand b ON cm.brand_id = b.id
          WHERE pcm.product_id = p.id
        ),
        '[]'::jsonb
      )
    ) INTO result
    FROM product p
    WHERE p.id = new_product_id;

    RETURN result;
  EXCEPTION
    WHEN OTHERS THEN
      -- En caso de error, hacer rollback y devolver el error
      RAISE;
  END;
END;
$$; 