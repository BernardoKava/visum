json.extract! issue_management, :id, :issue_title, :description, :completion_rate, :person_id, :user_id, :completion_target_date, :completion_actual_date, :created_at, :updated_at
json.url issue_management_url(issue_management, format: :json)
