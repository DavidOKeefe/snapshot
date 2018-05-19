class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :transaction_type
  validates :name, :date, :amount, :account_id, presence: true
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

  def self.totals_by_month_and_category(year = Time.now.year)
    joins(:category)
    .select('EXTRACT(month from date) AS month,
             EXTRACT(year from date) AS year,
             categories.name AS category_name,
             SUM(amount) AS total')
    .where('EXTRACT(year from date) = ?', year)
    .group('month, year, category_name')
    .order('year, month, category_name')
  end

end
