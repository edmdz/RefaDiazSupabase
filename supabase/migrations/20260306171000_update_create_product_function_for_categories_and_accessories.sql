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
  component_record JSONB;
  new_price_id INT;
  provider_price_id INT;
  selected_product_type_id INT;
  selected_product_category_id INT;
  is_accessory BOOLEAN := FALSE;
BEGIN
  selected_product_type_id := (product_data->>'productTypeId')::INT;
  selected_product_category_id := NULLIF(product_data->>'productCategoryId', '')::INT;

  IF selected_product_type_id IS NULL THEN
    RAISE EXCEPTION 'El campo productTypeId es obligatorio';
  END IF;

  SELECT lower(pt.name) = 'accesorio'
  INTO is_accessory
  FROM product_type pt
  WHERE pt.id = selected_product_type_id
    AND pt.active = TRUE;

  IF is_accessory IS NULL THEN
    RAISE EXCEPTION 'El productTypeId % no existe o no está activo', selected_product_type_id;
  END IF;

  IF selected_product_category_id IS NOT NULL THEN
    IF NOT EXISTS (
      SELECT 1
      FROM product_category pc
      WHERE pc.id = selected_product_category_id
        AND pc.product_type_id = selected_product_type_id
        AND pc.active = TRUE
    ) THEN
      RAISE EXCEPTION 'La categoría % no pertenece al tipo de producto %', selected_product_category_id, selected_product_type_id;
    END IF;
  END IF;

  BEGIN
    INSERT INTO product (
      name,
      comments,
      stock_count,
      dpi,
      product_type_id,
      product_category_id,
      active
    ) VALUES (
      product_data->>'name',
      product_data->>'comments',
      CASE WHEN is_accessory THEN NULL ELSE (product_data->>'stockCount')::INT END,
      CASE WHEN is_accessory THEN NULL ELSE product_data->>'dpi' END,
      selected_product_type_id,
      selected_product_category_id,
      COALESCE((product_data->>'active')::BOOLEAN, TRUE)
    )
    RETURNING id INTO new_product_id;

    IF product_data ? 'files' AND jsonb_array_length(product_data->'files') > 0 THEN
      FOR file_record IN SELECT * FROM jsonb_array_elements(product_data->'files')
      LOOP
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
          2
        );
      END LOOP;
    END IF;

    IF NOT is_accessory AND product_data ? 'providers' AND jsonb_array_length(product_data->'providers') > 0 THEN
      FOR provider_record IN SELECT * FROM jsonb_array_elements(product_data->'providers')
      LOOP
        IF provider_record ? 'price' AND provider_record->'price' ? 'description' AND provider_record->'price' ? 'cost' THEN
          INSERT INTO price (
            description,
            cost
          ) VALUES (
            provider_record->'price'->>'description',
            (REPLACE(REPLACE(provider_record->'price'->>'cost', '$', ''), ',', ''))::MONEY
          )
          RETURNING id INTO provider_price_id;
        ELSE
          provider_price_id := (provider_record->>'priceId')::INT;
        END IF;

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

    IF NOT is_accessory AND product_data ? 'prices' AND jsonb_array_length(product_data->'prices') > 0 THEN
      FOR price_record IN SELECT * FROM jsonb_array_elements(product_data->'prices')
      LOOP
        IF price_record ? 'price' AND price_record->'price' ? 'description' AND price_record->'price' ? 'cost' THEN
          INSERT INTO price (
            description,
            cost
          ) VALUES (
            price_record->'price'->>'description',
            (REPLACE(REPLACE(price_record->'price'->>'cost', '$', ''), ',', ''))::MONEY
          )
          RETURNING id INTO new_price_id;

          INSERT INTO product_price (
            product_id,
            price_id
          ) VALUES (
            new_product_id,
            new_price_id
          );
        ELSE
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
          CASE WHEN is_accessory THEN NULL ELSE (car_model_record->>'initialYear')::INT END,
          CASE WHEN is_accessory THEN NULL ELSE (car_model_record->>'lastYear')::INT END
        );
      END LOOP;
    END IF;

    IF NOT is_accessory AND product_data ? 'components' AND jsonb_array_length(product_data->'components') > 0 THEN
      FOR component_record IN SELECT * FROM jsonb_array_elements(product_data->'components')
      LOOP
        INSERT INTO product_component (
          product_id,
          component_product_id,
          active
        ) VALUES (
          new_product_id,
          (component_record->>'componentProductId')::INT,
          TRUE
        )
        ON CONFLICT (product_id, component_product_id) DO UPDATE
        SET
          active = TRUE,
          updated_at = CURRENT_TIMESTAMP;
      END LOOP;
    END IF;

    RETURN (
      SELECT jsonb_build_object(
        'id', p.id,
        'name', p.name,
        'comments', p.comments,
        'stockCount', p.stock_count,
        'dpi', p.dpi,
        'productTypeId', p.product_type_id,
        'productCategoryId', p.product_category_id,
        'productCategory', CASE
          WHEN pc.id IS NULL THEN NULL
          ELSE jsonb_build_object(
            'id', pc.id,
            'name', pc.name,
            'description', pc.description,
            'productTypeId', pc.product_type_id,
            'orderId', pc.order_id,
            'active', pc.active
          )
        END,
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
              ORDER BY f.order_id, f.id
            )
            FROM file f
            WHERE f.object_id = p.id AND f.file_type_id = 2 AND f.active = TRUE
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
                'productId', prod_price.product_id,
                'priceId', prod_price.price_id,
                'price', jsonb_build_object(
                  'id', price.id,
                  'description', price.description,
                  'cost', price.cost
                )
              )
            )
            FROM product_price prod_price
            JOIN price ON prod_price.price_id = price.id
            WHERE prod_price.product_id = p.id
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
              AND pcm.active = TRUE
          ),
          '[]'::jsonb
        ),
        'components', COALESCE(
          (
            SELECT jsonb_agg(
              jsonb_build_object(
                'componentProductId', product_component.component_product_id,
                'componentProduct', jsonb_build_object(
                  'id', cp.id,
                  'name', cp.name,
                  'dpi', cp.dpi,
                  'productTypeId', cp.product_type_id,
                  'active', cp.active
                )
              )
            )
            FROM product_component
            JOIN product cp ON product_component.component_product_id = cp.id
            WHERE product_component.product_id = p.id
              AND product_component.active = TRUE
              AND cp.active = TRUE
          ),
          '[]'::jsonb
        )
      )
      FROM product p
      LEFT JOIN product_category pc ON pc.id = p.product_category_id
      WHERE p.id = new_product_id
    );
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END;
END;
$$;
