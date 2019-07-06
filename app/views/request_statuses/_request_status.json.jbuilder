json.extract! request_status, :id, :name, :description, :active, :notes, :user_id, :created_at, :updated_at
json.url request_status_url(request_status, format: :json)
