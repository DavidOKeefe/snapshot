class AccountingCategory < ActiveRecord::Base
  belongs_to :accounting_type
end
