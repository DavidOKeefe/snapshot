class CreateAccountingCategories < ActiveRecord::Migration
  def change
    create_table :accounting_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
