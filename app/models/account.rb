class Account < ActiveRecord::Base
  belongs_to :account_type
  has_many :balances
  has_many :transactions
  validates :name, :account_type, presence: true

  def type
    account_type.name
  end
end
