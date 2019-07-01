json.extract! budget, :id, :user_id, :month, :year, :budget_date, :name, :balance, :budget_number, :reference_number, :created_at, :updated_at
json.url budget_url(budget, format: :json)
