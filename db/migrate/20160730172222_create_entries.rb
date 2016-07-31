class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.integer :amount
      t.integer :account_id
      t.integer :category_id
      t.string :transaction_type

      t.timestamps null: false
    end
  end
end
