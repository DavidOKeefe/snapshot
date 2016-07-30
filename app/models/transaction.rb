class Transaction < ActiveRecord::Base
  has_one :category
  has_one :transaction_type
end
