FactoryGirl.define do
  factory :stock do
    association :portfolio, factory: :portfolio

    after(:create) do |stock|
      name "apple"
      buy_price 135.72
      symbol "AAPL"
    end
  end
end
