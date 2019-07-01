class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :department
      t.boolean :active
      t.integer :user_id
      t.date :period_from
      t.integer :department_id
      t.string :location
      t.string :inventory_number

      t.timestamps
    end
  end
end
