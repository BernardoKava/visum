class CreateNetworkSwitches < ActiveRecord::Migration[5.2]
  def change
    create_table :network_switches do |t|
      t.string :code_name
      t.string :branding
      t.integer :number_of_ports
      t.string :s_location
      t.string :ip_address
      t.string :user_name
      t.string :password
      t.boolean :active
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
