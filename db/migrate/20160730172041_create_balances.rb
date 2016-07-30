class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :account_id
      t.integer :balance
      t.string :state

      t.timestamps null: false
    end
  end
end
