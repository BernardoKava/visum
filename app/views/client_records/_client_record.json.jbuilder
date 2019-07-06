json.extract! client_record, :id, :name, :description, :virtual, :operating_system_id, :person_id, :deployment_date, :notes, :user_id, :created_at, :updated_at
json.url client_record_url(client_record, format: :json)
