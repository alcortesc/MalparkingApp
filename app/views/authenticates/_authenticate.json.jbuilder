json.extract! authenticate, :id, :user_id, :register_id, :fecha_hora, :created_at, :updated_at
json.url authenticate_url(authenticate, format: :json)
