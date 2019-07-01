class CreateLedgers < ActiveRecord::Migration[5.2]
  def change
    create_table :ledgers do |t|
      t.string :month
      t.string :year
      t.date :ledger_date
      t.string :name
      t.integer :user_id
      t.numeric :annual_budget_bal
      t.numeric :annual_cashflow_bal
      t.numeric :annual_total_income
      t.numeric :annual_total_expenditure
      t.string :ledger_number
      t.integer :reference_number
      t.numeric :act_inflow_other
      t.text :note
      t.numeric :annual_budgeted_income
      t.numeric :annual_budgeted_expenses

      t.timestamps
    end
  end
end
