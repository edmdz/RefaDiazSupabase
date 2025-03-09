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
  new_file_id INT;
  new_price_id INT;
  provider_price_id INT;
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
        -- Crear un nuevo archivo
        INSERT INTO file (
          name,
          mime_type,
          storage_path,
          order_id,
          object_id,
          file_type_id
        ) VALUES (
          file_record->>'name',
          file_record->>'mimeType',
          file_record->>'storagePath',
          COALESCE((file_record->>'orderId')::INT, 1),
          new_product_id,
          1  -- Asumiendo que 1 es el ID para el tipo de archivo de producto
        );
      END LOOP;
    END IF;

    -- 3. Insertar relaciones con proveedores y sus precios
    IF product_data ? 'providers' AND jsonb_array_length(product_data->'providers') > 0 THEN
      FOR provider_record IN SELECT * FROM jsonb_array_elements(product_data->'providers')
      LOOP
        -- Crear el precio del proveedor si no existe
        IF provider_record ? 'price' AND provider_record->'price' ? 'description' AND provider_record->'price' ? 'cost' THEN
          -- Crear un nuevo precio para el proveedor
          INSERT INTO price (
            description,
            cost
          ) VALUES (
            provider_record->'price'->>'description',
            (REPLACE(REPLACE(provider_record->'price'->>'cost', '$', ''), ',', ''))::MONEY
          )
          RETURNING id INTO provider_price_id;
        ELSE
          -- Si no hay información de precio, usar el priceId proporcionado
          provider_price_id := (provider_record->>'priceId')::INT;
        END IF;

        -- Insertar la relación proveedor-producto
        INSERT INTO provider_product (
          product_id,
          provider_id,
          price_id,
          num_series
        ) VALUES (
          new_product_id,
          (provider_record->>'providerId')::INT,
          provider_price_id,
          provider_record->>'numSeries'
        );
      END LOOP;
    END IF;

    -- 4. Insertar precios asociados al producto
    IF product_data ? 'prices' AND jsonb_array_length(product_data->'prices') > 0 THEN
      FOR price_record IN SELECT * FROM jsonb_array_elements(product_data->'prices')
      LOOP
        -- Crear un nuevo precio si contiene la información necesaria
        IF price_record ? 'price' AND price_record->'price' ? 'description' AND price_record->'price' ? 'cost' THEN
          -- Crear un nuevo precio
          INSERT INTO price (
            description,
            cost
          ) VALUES (
            price_record->'price'->>'description',
            (REPLACE(REPLACE(price_record->'price'->>'cost', '$', ''), ',', ''))::MONEY
          )
          RETURNING id INTO new_price_id;

          -- Insertar la relación producto-precio
          INSERT INTO product_price (
            product_id,
            price_id
          ) VALUES (
            new_product_id,
            new_price_id
          );
        ELSE
          -- Si no hay información de precio, usar el priceId proporcionado
          INSERT INTO product_price (
            product_id,
            price_id
          ) VALUES (
            new_product_id,
            (price_record->>'priceId')::INT
          );
        END IF;
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