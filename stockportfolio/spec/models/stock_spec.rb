require 'rails_helper'

RSpec.describe Stock, type: :model do
  let(:stock) {create(:stock)}
  it "is valid with valid attributes" do
    expect(stock).to be_valid
  end

  it "is not valid without a name" do
    stock.name = nil
    expect(stock).to_not be_valid
  end

  it "is not valid without a name" do
    stock.symbol = nil
    expect(stock).to_not be_valid
  end

  describe "Associations" do
    it "has belongs to a portfolio" do
      asc = Stock.reflect_on_association(:portfolio)
      expect(asc.macro).to eq :belongs_to
    end
  end

  describe "#current_price" do
    it "has a current_price" do
      expect(stock.current_price).to be_truthy
    end
  end

  describe "#current_value" do
    it "has a current_value" do
      stock.volume = 2
      expect(stock.current_value).to eq (stock.current_price * stock.volume)
    end
  end

  describe "#cost_basis" do
    it "has a cost_basis" do
      stock.buy_price = 135.72
      stock.volume = 2
      expect(stock.cost_basis).to eq 271.44
    end
  end

  describe "#net_profit" do
    it "has a net profit" do
      stock.volume = 2
      stock.buy_price = 100
      expect(stock.net_profit).to eq (stock.current_value - stock.cost_basis)
    end
  end

  describe "#percent_change" do
    it "has a percent change" do
      stock.buy_price = 200
      stock.volume = 10
      expect(stock.percent_change).to eq (stock.net_profit / stock.cost_basis)
    end
  end

end
