CREATE OR REPLACE FUNCTION update_product_with_relations(
  product_id INT,
  product_data JSONB
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  file_record JSONB;
  provider_record JSONB;
  price_record JSONB;
  car_model_record JSONB;
  new_file_id INT;
  new_price_id INT;
  provider_price_id INT;
  result JSONB;
  existing_price_ids INT[];
  existing_provider_ids INT[];
  existing_car_model_ids INT[];
  existing_file_ids INT[];
BEGIN
  -- Verificar que el producto existe
  IF NOT EXISTS (SELECT 1 FROM product WHERE id = product_id) THEN
    RAISE EXCEPTION 'El producto con ID % no existe', product_id;
  END IF;

  -- Iniciar transacción
  BEGIN
    -- 1. Actualizar el producto principal
    UPDATE product SET
      name = COALESCE(product_data->>'name', name),
      comments = COALESCE(product_data->>'comments', comments),
      stock_count = COALESCE((product_data->>'stockCount')::INT, stock_count),
      dpi = COALESCE(product_data->>'dpi', dpi),
      product_type_id = COALESCE((product_data->>'productTypeId')::INT, product_type_id),
      active = COALESCE((product_data->>'active')::BOOLEAN, active),
      updated_at = CURRENT_TIMESTAMP
    WHERE id = product_id;

    -- 2. Gestionar archivos
    IF product_data ? 'files' THEN
      -- Obtener IDs de archivos existentes
      SELECT array_agg(id) INTO existing_file_ids 
      FROM file 
      WHERE object_id = product_id AND file_type_id = 1;

      -- Eliminar archivos que no están en el nuevo conjunto
      IF existing_file_ids IS NOT NULL THEN
        DELETE FROM file 
        WHERE object_id = product_id 
          AND file_type_id = 1 
          AND id NOT IN (
            SELECT (jsonb_array_elements(product_data->'files')->>'id')::INT 
            FROM jsonb_array_elements(product_data->'files')
            WHERE jsonb_array_elements(product_data->'files') ? 'id'
          );
      END IF;

      -- Insertar o actualizar archivos
      IF jsonb_array_length(product_data->'files') > 0 THEN
        FOR file_record IN SELECT * FROM jsonb_array_elements(product_data->'files')
        LOOP
          -- Si tiene ID, actualizar
          IF file_record ? 'id' THEN
            UPDATE file SET
              name = COALESCE(file_record->>'name', name),
              mime_type = COALESCE(file_record->>'mimeType', mime_type),
              storage_path = COALESCE(file_record->>'storagePath', storage_path),
              order_id = COALESCE((file_record->>'orderId')::INT, order_id),
              updated_at = CURRENT_TIMESTAMP
            WHERE id = (file_record->>'id')::INT AND object_id = product_id;
          ELSE
            -- Si no tiene ID, crear nuevo
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
              product_id,
              1  -- Asumiendo que 1 es el ID para el tipo de archivo de producto
            );
          END IF;
        END LOOP;
      END IF;
    END IF;

    -- 3. Gestionar relaciones con proveedores
    IF product_data ? 'providers' THEN
      -- Obtener IDs de relaciones proveedor-producto existentes
      SELECT array_agg(provider_id) INTO existing_provider_ids 
      FROM provider_product 
      WHERE product_id = product_id;

      -- Eliminar relaciones que no están en el nuevo conjunto
      IF existing_provider_ids IS NOT NULL THEN
        DELETE FROM provider_product 
        WHERE product_id = product_id 
          AND provider_id NOT IN (
            SELECT (jsonb_array_elements(product_data->'providers')->>'providerId')::INT 
            FROM jsonb_array_elements(product_data->'providers')
          );
      END IF;

      -- Insertar o actualizar relaciones con proveedores
      IF jsonb_array_length(product_data->'providers') > 0 THEN
        FOR provider_record IN SELECT * FROM jsonb_array_elements(product_data->'providers')
        LOOP
          -- Verificar si ya existe la relación
          IF EXISTS (
            SELECT 1 FROM provider_product 
            WHERE product_id = product_id 
              AND provider_id = (provider_record->>'providerId')::INT
          ) THEN
            -- Si existe la relación, actualizar
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

              -- Actualizar la relación con el nuevo precio
              UPDATE provider_product SET
                price_id = provider_price_id,
                num_series = COALESCE(provider_record->>'numSeries', num_series),
                updated_at = CURRENT_TIMESTAMP
              WHERE product_id = product_id 
                AND provider_id = (provider_record->>'providerId')::INT;
            ELSE
              -- Actualizar solo el numSeries si no hay nuevo precio
              UPDATE provider_product SET
                num_series = COALESCE(provider_record->>'numSeries', num_series),
                updated_at = CURRENT_TIMESTAMP
              WHERE product_id = product_id 
                AND provider_id = (provider_record->>'providerId')::INT;
            END IF;
          ELSE
            -- Si no existe la relación, crear nueva
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

            -- Insertar la nueva relación
            INSERT INTO provider_product (
              product_id,
              provider_id,
              price_id,
              num_series
            ) VALUES (
              product_id,
              (provider_record->>'providerId')::INT,
              provider_price_id,
              provider_record->>'numSeries'
            );
          END IF;
        END LOOP;
      END IF;
    END IF;

    -- 4. Gestionar precios del producto
    IF product_data ? 'prices' THEN
      -- Obtener IDs de precios existentes
      SELECT array_agg(price_id) INTO existing_price_ids 
      FROM product_price 
      WHERE product_id = product_id;

      -- Eliminar relaciones de precios que no están en el nuevo conjunto
      IF existing_price_ids IS NOT NULL THEN
        DELETE FROM product_price 
        WHERE product_id = product_id 
          AND price_id NOT IN (
            SELECT (jsonb_array_elements(product_data->'prices')->>'priceId')::INT 
            FROM jsonb_array_elements(product_data->'prices')
            WHERE jsonb_array_elements(product_data->'prices') ? 'priceId'
          );
      END IF;

      -- Insertar nuevos precios
      IF jsonb_array_length(product_data->'prices') > 0 THEN
        FOR price_record IN SELECT * FROM jsonb_array_elements(product_data->'prices')
        LOOP
          -- Si tiene priceId, verificar si ya existe la relación
          IF price_record ? 'priceId' THEN
            IF NOT EXISTS (
              SELECT 1 FROM product_price 
              WHERE product_id = product_id 
                AND price_id = (price_record->>'priceId')::INT
            ) THEN
              -- Si no existe, crear la relación
              INSERT INTO product_price (
                product_id,
                price_id
              ) VALUES (
                product_id,
                (price_record->>'priceId')::INT
              );
            END IF;
          ELSIF price_record ? 'price' AND price_record->'price' ? 'description' AND price_record->'price' ? 'cost' THEN
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
              product_id,
              new_price_id
            );
          END IF;
        END LOOP;
      END IF;
    END IF;

    -- 5. Gestionar relaciones con modelos de carro
    IF product_data ? 'carModels' THEN
      -- Eliminar todas las relaciones existentes con modelos de carro
      -- (Es más simple recrearlas que compararlas una por una debido a los años)
      DELETE FROM product_car_model 
      WHERE product_id = product_id;

      -- Insertar nuevas relaciones con modelos de carro
      IF jsonb_array_length(product_data->'carModels') > 0 THEN
        FOR car_model_record IN SELECT * FROM jsonb_array_elements(product_data->'carModels')
        LOOP
          INSERT INTO product_car_model (
            product_id,
            car_model_id,
            initial_year,
            last_year
          ) VALUES (
            product_id,
            (car_model_record->>'carModelId')::INT,
            (car_model_record->>'initialYear')::INT,
            (car_model_record->>'lastYear')::INT
          );
        END LOOP;
      END IF;
    END IF;

    -- Obtener el producto actualizado con todas sus relaciones
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
    WHERE p.id = product_id;

    RETURN result;
  EXCEPTION
    WHEN OTHERS THEN
      -- En caso de error, hacer rollback y devolver el error
      RAISE;
  END;
END;
$$; 