class ImportCSVEntries
  include ActiveModel::Model

  attr_accessor :account_id, :import_entry
  validates :account_id, presence: true
  validates :import_entry, presence: true

  def import
  end
end
