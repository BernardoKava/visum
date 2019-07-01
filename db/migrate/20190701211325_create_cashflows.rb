class CreateCashflows < ActiveRecord::Migration[5.2]
  def change
    create_table :cashflows do |t|
      t.string :month
      t.string :year
      t.date :accounting_date
      t.string :name
      t.integer :user_id
      t.numeric :balance
      t.string :cashflow_number
      t.integer :reference_number

      t.timestamps
    end
  end
end
