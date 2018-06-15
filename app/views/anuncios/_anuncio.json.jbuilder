json.extract! anuncio, :id, :titulo, :estado, :descripcion, :departamento_id, :created_at, :updated_at
json.url anuncio_url(anuncio, format: :json)
