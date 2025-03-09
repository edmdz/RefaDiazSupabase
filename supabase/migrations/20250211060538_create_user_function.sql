-- En tu base de datos Supabase (SQL Editor)
CREATE OR REPLACE FUNCTION create_user_with_person(
  user_data JSONB
)
RETURNS JSONB AS $$
DECLARE
  new_person RECORD;
  new_user RECORD;
BEGIN
  -- Insertar la persona
  INSERT INTO person (name, last_name, birth_date, email, phone_number, address, active)
  VALUES (
    (user_data->'person'->>'name')::TEXT,
    (user_data->'person'->>'lastName')::TEXT,
    (user_data->'person'->>'birthDate')::DATE,
    (user_data->'person'->>'email')::TEXT,
    (user_data->'person'->>'phoneNumber')::TEXT,
    (user_data->'person'->>'address')::TEXT,
    COALESCE((user_data->'person'->>'active')::BOOLEAN, TRUE)
  )
  RETURNING * INTO new_person; -- Guarda los datos de la persona insertada

  -- Insertar el usuario, usando el ID de la persona recién creada
  INSERT INTO "user" (id, person_id, role_id, active)
  VALUES (
    (user_data->>'id')::TEXT,
    new_person.id,
    (user_data->>'roleId')::INTEGER,
    COALESCE((user_data->>'active')::BOOLEAN, TRUE)
  )
  RETURNING * INTO new_user; -- Guarda los datos del usuario insertado.

  -- Devolver los datos del nuevo usuario y persona (opcional)
  RETURN jsonb_build_object(
    'user', row_to_json(new_user),
    'person', row_to_json(new_person)
  );
END;
$$ LANGUAGE plpgsql;