json.extract! restaurante, :id, :nome, :cardapio, :layout, :mapa, :foto, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)
