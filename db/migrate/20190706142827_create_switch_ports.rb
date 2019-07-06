class CreateSwitchPorts < ActiveRecord::Migration[5.2]
  def change
    create_table :switch_ports do |t|
      t.integer :network_switch_id
      t.integer :port_number
      t.integer :server_record_id
      t.integer :client_record_id
      t.text :notes
      t.integer :user_id
      t.integer :operating_system_id

      t.timestamps
    end
  end
end
