require 'rails_helper'

RSpec.describe Portfolio do
  let(:portfolio) {create(:portfolio)}
  it "is valid with valid attributes" do
    expect(portfolio).to be_valid
  end

  it "is not valid without a name" do
    portfolio.name = nil
    expect(portfolio).to_not be_valid
  end

  it "has stocks" do
    expect(portfolio.stocks.size).to eq(Stock.all.size)
  end

  describe "Associations" do
    it "has many stocks" do
      asc = Portfolio.reflect_on_association(:stocks)
      expect(asc.macro).to eq :has_many
    end
  end


  describe "#current_value" do
    it "has a current_value" do
      expect(portfolio.current_value).to eq (portfolio.stocks.last.current_value)
    end
  end

  describe "#cost_basis" do
    it "has a cost_basis" do
      expect(portfolio.cost_basis).to eq (portfolio.stocks.last.cost_basis)
    end
  end

  describe "#net_profit" do
    it "has a net profit" do
      expect(portfolio.net_profit).to eq (portfolio.current_value - portfolio.cost_basis)
    end
  end

  describe "#percent_change" do
    it "has a percent change" do
      expect(portfolio.percent_change).to eq (portfolio.net_profit / portfolio.cost_basis)
    end
  end

end
