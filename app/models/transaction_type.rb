class TransactionType < ActiveRecord::Base
  has_many :entries
end
