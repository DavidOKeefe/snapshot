class Entry < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :transaction_type
  validates :name, :date, :amount, presence: true
  validates_associated :account, :category, :transaction_type

  def self.import(file:, account_id:)
    #find mapping definition by account_id
    integration_mapper = IntegrationMapper.find(account_id)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      # check if entry already exists based on reference
      entry = find_by()

      #if so, update

      #otherwise, create a new record

    end
  end

end
