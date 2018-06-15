json.extract! detalle_aplicacion, :id, :estado, :fecha, :people_id, :evaluacion_psicologica_id, :evaluacion_tecnica_id, :created_at, :updated_at
json.url detalle_aplicacion_url(detalle_aplicacion, format: :json)
