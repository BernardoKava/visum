class CreateClientRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :client_records do |t|
      t.string :name
      t.text :description
      t.boolean :virtual
      t.integer :operating_system_id
      t.integer :person_id
      t.date :deployment_date
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
