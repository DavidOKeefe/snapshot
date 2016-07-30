class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :name
      t.integer :accounting_category_id

      t.timestamps null: false
    end
  end
end
