json.extract! user, :id, :admin, :name, :lastname, :disabled, :created_at, :updated_at
json.url user_url(user, format: :json)
