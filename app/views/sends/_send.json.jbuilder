json.extract! send, :id, :notification_id, :report_id, :fecha_hora, :created_at, :updated_at
json.url send_url(send, format: :json)
