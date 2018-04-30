FactoryGirl.define do
  factory :transaction do
    sequence(:name) { |n| "Starbucks #{n}" }
    account
    category
    transaction_type
    amount 45.40
    date Date.current
  end
end
