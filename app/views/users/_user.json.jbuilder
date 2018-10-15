json.extract! user, :id, :tipo_documento, :numero_documento, :ciudad, :correo_electronico, :genero, :celular, :created_at, :updated_at
json.url user_url(user, format: :json)
