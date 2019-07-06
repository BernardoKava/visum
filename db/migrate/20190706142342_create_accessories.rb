class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.boolean :hard_disk
      t.boolean :network_card
      t.integer :server_record_id
      t.integer :client_record_id
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
