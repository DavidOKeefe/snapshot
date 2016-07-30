class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :account_type_id

      t.timestamps null: false
    end
  end
end
