json.extract! resource, :id, :name, :description, :user_id, :link, :active, :created_at, :updated_at
json.url resource_url(resource, format: :json)
