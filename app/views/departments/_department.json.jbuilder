json.extract! department, :id, :name, :description, :active, :person_id, :created_at, :updated_at
json.url department_url(department, format: :json)
