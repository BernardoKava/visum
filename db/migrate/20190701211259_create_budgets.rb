class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.string :month
      t.string :year
      t.date :budget_date
      t.string :name
      t.decimal :balance
      t.string :budget_number
      t.integer :reference_number

      t.timestamps
    end
  end
end
