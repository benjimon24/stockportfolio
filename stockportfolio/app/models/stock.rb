class Stock < ApplicationRecord
  belongs_to :portfolio
  validates_presence_of :name, :cost_basis, :volume, :symbol

  def current_price
    StockQuote::Stock.json_quote(self.symbol)["quote"]["Ask"].to_f
  end

  def current_value
    current_price * self.volume
  end

  def cost_basis
    self.volume * self.buy_price
  end

  def net_profit
    self.current_value - self.cost_basis
  end

end
