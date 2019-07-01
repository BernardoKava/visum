class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.string :name
      t.string :school
      t.date :from
      t.date :to
      t.string :grade
      t.boolean :active
      t.integer :person_id
      t.integer :user_id

      t.timestamps
    end
  end
end
