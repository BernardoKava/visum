json.extract! expense, :id, :owner, :amount, :expense_type, :user_id, :budget_id, :details, :month, :year, :person_id, :outflowtype_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
