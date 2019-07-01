class CreateInflows < ActiveRecord::Migration[5.2]
  def change
    create_table :inflows do |t|
      t.numeric :amount
      t.text :details
      t.integer :user_id
      t.integer :cashflow_id
      t.string :year
      t.string :month
      t.integer :person_id
      t.integer :inflowtype_id
      t.date :date_posted
      t.text :rationale
      t.integer :bankaccount_id
      t.boolean :follow_up
      t.string :picture
      t.string :attachment
      t.string :flowtype

      t.timestamps
    end
  end
end
