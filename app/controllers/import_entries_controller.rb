class ImportEntriesController < ApplicationController
  def create
    redirect_to entries_path, success: I18n.t('.success')
  end

  private

  def entry_params
    params
    .require(:import_entry)
    .permit(:account_id, :import_entry)
  end
end
