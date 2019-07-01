class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.integer :user_id
      t.string :month
      t.string :year
      t.date :saving_date
      t.string :name
      t.numeric :balance
      t.string :saving_number
      t.integer :reference_number

      t.timestamps
    end
  end
end
