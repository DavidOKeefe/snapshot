class ImportEntriesController < ApplicationController
  def new
    @import_entry = ImportCSVEntries.new
  end

  def create
    @import_entry = ImportCSVEntries.new(entry_params)
    @import_entry.import
    if @import_entry.errors.empty?
      message = I18n.t('import_entries.create.success')
    else
      message = "#{@import_entry.errors.full_messages}"
    end
    redirect_to entries_path, notice: message
  end

  private

  def entry_params
    params
    .require(:import_csv_entries)
    .permit(:account_id, :file)
  end
end
