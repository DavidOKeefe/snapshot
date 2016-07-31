FactoryGirl.define do
  factory :account do
    sequence(:name) { |n| "ABC Financial #{n}" }
    account_type
  end
end
