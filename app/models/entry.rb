class Entry < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :transaction_type
  validates :name, :amount, presence: true
  validates_associated :account, :category, :transaction_type
end
