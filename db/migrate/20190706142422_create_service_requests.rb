class CreateServiceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :service_requests do |t|
      t.integer :ticket_number
      t.integer :request_type_id
      t.integer :tech_service_id
      t.text :problem_description
      t.integer :request_status_id
      t.text :case_notes
      t.text :case_resolution
      t.boolean :resolved
      t.integer :user_id

      t.timestamps
    end
  end
end
