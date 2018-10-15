json.extract! report, :id, :descripcion_denuncia, :tipo_denuncia, :direccion_denuncia, :envio_notificacion, :created_at, :updated_at
json.url report_url(report, format: :json)
