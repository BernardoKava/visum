json.extract! service_request, :id, :ticket_number, :request_type_id, :tech_service_id, :problem_description, :request_status_id, :case_notes, :case_resolution, :resolved, :user_id, :created_at, :updated_at
json.url service_request_url(service_request, format: :json)
