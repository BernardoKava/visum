class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.date :delivery_date
      t.integer :user_id
      t.string :receiver
      t.integer :person_id
      t.string :delivery_number

      t.timestamps
    end
  end
end
