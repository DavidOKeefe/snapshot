class ImportEntryController < ApplicationController
  def create
    Entry.new(entry_params).save
    redirect_to entries_path, success: "Entry created!"
  end

  private

  def entry_params
    params
    .require(:import_entry)
    .permit(
      :name,
      :account_id,
      :category_id,
      :transaction_type_id,
      :amount,
      :date
      )
  end
end
