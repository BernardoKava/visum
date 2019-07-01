class CreateOutflowtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :outflowtypes do |t|
      t.string :name
      t.text :description
      t.boolean :system_item
      t.boolean :active

      t.timestamps
    end
  end
end
