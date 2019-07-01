json.extract! post, :id, :post_type, :description, :signed_for_by, :scanned, :user_id, :delivery_id, :owner, :post_type_id, :created_at, :updated_at
json.url post_url(post, format: :json)
