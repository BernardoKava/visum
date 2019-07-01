class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :inventory_id
      t.string :item
      t.text :description
      t.numeric :quantity
      t.numeric :value
      t.boolean :virtual

      t.timestamps
    end
  end
end
