class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.integer :amount
      t.datetime :date
      t.string :reference
      t.integer :account_id
      t.integer :category_id
      t.integer :transaction_type_id

      t.timestamps null: false
    end
  end
end
