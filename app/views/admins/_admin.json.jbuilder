json.extract! admin, :id, :login, :senha, :nome, :created_at, :updated_at
json.url admin_url(admin, format: :json)
