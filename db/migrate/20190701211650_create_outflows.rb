class CreateOutflows < ActiveRecord::Migration[5.2]
  def change
    create_table :outflows do |t|
      t.numeric :amount
      t.text :details
      t.integer :user_id
      t.integer :cashflow_id
      t.string :month
      t.string :year
      t.integer :person_id
      t.integer :outflowtype_id
      t.date :date_posted
      t.text :rationale
      t.integer :bankaccount_id
      t.boolean :follow_up
      t.boolean :cash_withdrawal
      t.string :picture
      t.string :flowtype

      t.timestamps
    end
  end
end
