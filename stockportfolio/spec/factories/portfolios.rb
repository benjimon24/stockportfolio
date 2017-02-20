FactoryGirl.define do
  factory :portfolio do
    association :user, factory: :user

    after(:create) do |portfolio|
      name "portfolio_test"
    end
  end
end
