json.extract! post_type, :id, :name, :description, :active, :user_id, :created_at, :updated_at
json.url post_type_url(post_type, format: :json)
