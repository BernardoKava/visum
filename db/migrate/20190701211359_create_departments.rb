class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :person_id

      t.timestamps
    end
  end
end
