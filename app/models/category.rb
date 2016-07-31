class Category < ActiveRecord::Base
  has_many :financial_transactions
end
