class ImportEntriesController < ApplicationController
  def create
    i = ImportCSVEntries.new(entry_params)
    i.import
    if i.errors.empty?
      message = I18n.t('import_entries.create.success')
    else
      message = "#{i.errors.full_messages}"
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
