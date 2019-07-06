class CreateOperatingSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :operating_systems do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
