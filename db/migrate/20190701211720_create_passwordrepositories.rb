class CreatePasswordrepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :passwordrepositories do |t|
      t.string :system_name
      t.string :system_password
      t.boolean :active
      t.string :user_name

      t.timestamps
    end
  end
end
