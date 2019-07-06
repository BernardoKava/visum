json.extract! deployment_status, :id, :name, :description, :active, :notes, :created_at, :updated_at
json.url deployment_status_url(deployment_status, format: :json)
