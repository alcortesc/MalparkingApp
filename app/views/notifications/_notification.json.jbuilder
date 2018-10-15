json.extract! notification, :id, :entidad_notificada, :elemento_notificado, :estado_notificacion, :created_at, :updated_at
json.url notification_url(notification, format: :json)
