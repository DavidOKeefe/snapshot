FactoryGirl.define do
  factory :entry do
    sequence(:name) { |n| "Starbucks #{n}" }
    account
    category
    transaction_type
    amount 45.40
    date Date.current
  end
end
