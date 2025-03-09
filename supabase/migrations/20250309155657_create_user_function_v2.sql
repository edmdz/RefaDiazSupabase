CREATE OR REPLACE FUNCTION create_user_with_person(
  user_data JSONB
)
RETURNS JSONB AS $$
DECLARE
  new_person RECORD;
  new_user RECORD;
BEGIN
  -- Insertar la persona
  INSERT INTO person (
    name, 
    last_name, 
    birth_date, 
    email, 
    phone_number, 
    address, 
    active
  )
  VALUES (
    (user_data->'person'->>'name')::TEXT,
    (user_data->'person'->>'last_name')::TEXT,
    (user_data->'person'->>'birth_date')::DATE,
    (user_data->'person'->>'email')::TEXT,
    (user_data->'person'->>'phone_number')::TEXT,
    (user_data->'person'->>'address')::TEXT,
    COALESCE((user_data->>'active')::INTEGER::BOOLEAN, TRUE) -- Convertimos 1/0 a BOOLEAN
  )
  RETURNING * INTO new_person;

  -- Insertar el usuario
  INSERT INTO "user" (
    id,
    person_id,
    role_id,
    active
  )
  VALUES (
    (user_data->>'id')::TEXT,
    new_person.id,
    (user_data->>'role_id')::INTEGER,
    COALESCE((user_data->>'active')::INTEGER::BOOLEAN, TRUE) -- Convertimos 1/0 a BOOLEAN
  )
  RETURNING * INTO new_user;

  -- Devolver los datos combinados
  RETURN jsonb_build_object(
    'user', row_to_json(new_user),
    'person', row_to_json(new_person)
  );
END;
$$ LANGUAGE plpgsql;