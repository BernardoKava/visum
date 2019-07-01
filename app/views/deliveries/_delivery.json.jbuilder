json.extract! delivery, :id, :delivery_date, :user_id, :receiver, :person_id, :delivery_number, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
