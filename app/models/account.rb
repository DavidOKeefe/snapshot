class Account < ActiveRecord::Base
  has_one :account_type
  has_one :accounting_category, through: :account_type
  has_many :balances
end
