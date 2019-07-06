json.extract! herga_application, :id, :name, :description, :dev_framework, :framework_description, :framework_version, :deployment_status_id, :deployment_date, :decomissioned_date, :person_id, :server_record_id, :inhouse_build, :third_party_build, :notes, :user_id, :created_at, :updated_at
json.url herga_application_url(herga_application, format: :json)
