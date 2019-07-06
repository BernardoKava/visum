json.extract! tech_service, :id, :name, :description, :active, :notes, :user_id, :created_at, :updated_at
json.url tech_service_url(tech_service, format: :json)
