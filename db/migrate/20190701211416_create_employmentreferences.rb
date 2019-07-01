class CreateEmploymentreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :employmentreferences do |t|
      t.string :referee_name
      t.string :referee_telephone
      t.string :referee_email
      t.text :referee_details
      t.integer :person_id
      t.boolean :referee_active
      t.integer :user_id
      t.integer :employment_id

      t.timestamps
    end
  end
end
