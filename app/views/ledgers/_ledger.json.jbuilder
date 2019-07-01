json.extract! ledger, :id, :month, :year, :ledger_date, :name, :user_id, :annual_budget_bal, :annual_cashflow_bal, :annual_total_income, :annual_total_expenditure, :ledger_number, :reference_number, :act_inflow_other, :note, :annual_budgeted_income, :annual_budgeted_expenses, :created_at, :updated_at
json.url ledger_url(ledger, format: :json)
