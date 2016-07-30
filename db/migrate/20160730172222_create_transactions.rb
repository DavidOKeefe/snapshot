class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :amount
      t.integer :account_id
      t.integer :category_id
      t.integer :transaction_type_id

      t.timestamps null: false
    end
  end
end
