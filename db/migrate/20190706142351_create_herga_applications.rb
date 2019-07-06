class CreateHergaApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :herga_applications do |t|
      t.string :name
      t.text :description
      t.string :dev_framework
      t.text :framework_description
      t.string :framework_version
      t.integer :deployment_status_id
      t.date :deployment_date
      t.date :decomissioned_date
      t.integer :person_id
      t.integer :server_record_id
      t.boolean :inhouse_build
      t.boolean :third_party_build
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
