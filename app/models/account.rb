class Account < ActiveRecord::Base
  belongs_to :account_type
  has_many :balances
  has_many :account_transactions
end
