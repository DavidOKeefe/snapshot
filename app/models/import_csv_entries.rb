class ImportCSVEntries
  include ActiveModel::Model

  attr_accessor :account_id, :file
  validates :account_id, presence: true
  validates :file, presence: true

  def import
    csv = CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      ActiveRecord::Base.transaction do
        Entry.create!(
          name: row[:description],
          amount: row[:amount],
          date: importable_date(row[:post_date]),
          transaction_type: importable_transaction_type(row[:type]),
          account_id: account_id
        )
      end
    end
  rescue => error
    errors.add(:import, "was not successful #{error.message}")
  end

  def importable_transaction_type(type)
    TransactionType.find_or_create_by(name: type.downcase)
  end

  def importable_date(date)
    Date.strptime(date, "%m/%d/%Y").iso8601
  end
end
