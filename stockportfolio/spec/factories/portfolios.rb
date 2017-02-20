FactoryGirl.define do
  factory :portfolio do
    association :user, factory: :user

    after(:create) do |portfolio|
      name "portfolio_test"
      buy_price 135.72
      volume 1
      symbol AAPL

    end

  end
end
