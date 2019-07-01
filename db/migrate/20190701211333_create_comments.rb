class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :inventory_id
      t.integer :user_id
      t.text :commentary
      t.integer :person_id
      t.integer :cashflow_id
      t.integer :saving_id
      t.integer :delivery_id
      t.integer :budget_id
      t.integer :issue_management_id

      t.timestamps
    end
  end
end
