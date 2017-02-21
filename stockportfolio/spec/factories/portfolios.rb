FactoryGirl.define do
  factory :portfolio do
    user
    name "portfolio_test"
    transient do
      stock_count 1
    end
    after(:create) do |portfolio, evaluator|
      create_list(:stock, evaluator.stock_count, portfolio: portfolio)
    end
  end

end
