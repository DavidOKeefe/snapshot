class AccountType < ActiveRecord::Base
  belongs_to :account
  has_one :accounting_category
end
