class CreateWithdrawals < ActiveRecord::Migration[5.2]
  def change
    create_table :withdrawals do |t|
      t.string :owner
      t.numeric :amount
      t.text :details
      t.integer :user_id
      t.integer :saving_id
      t.string :institution
      t.string :month
      t.string :year
      t.integer :person_id
      t.integer :financialinstitution_id
      t.string :origination
      t.text :rationale
      t.string :day
      t.integer :plannedactivity_id

      t.timestamps
    end
  end
end
