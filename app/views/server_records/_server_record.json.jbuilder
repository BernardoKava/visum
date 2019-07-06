json.extract! server_record, :id, :name, :description, :virtual, :operating_system_id, :person_id, :deployment_status_id, :deployment_date, :domain_controller, :functional_level_id, :notes, :user_id, :created_at, :updated_at
json.url server_record_url(server_record, format: :json)
