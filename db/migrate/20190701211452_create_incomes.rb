class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :owner
      t.numeric :amount
      t.text :details
      t.integer :user_id
      t.integer :budget_id
      t.string :income_type
      t.string :year
      t.string :month
      t.integer :person_id
      t.integer :inflowtype_id

      t.timestamps
    end
  end
end
