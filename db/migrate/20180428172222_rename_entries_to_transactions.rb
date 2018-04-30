class RenameEntriesToTransactions < ActiveRecord::Migration
  def change
    rename_table :entries, :transactions
  end
end
