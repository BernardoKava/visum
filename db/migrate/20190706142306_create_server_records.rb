class CreateServerRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :server_records do |t|
      t.string :name
      t.text :description
      t.boolean :virtual
      t.integer :operating_system_id
      t.integer :person_id
      t.integer :deployment_status_id
      t.date :deployment_date
      t.boolean :domain_controller
      t.integer :functional_level_id
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
