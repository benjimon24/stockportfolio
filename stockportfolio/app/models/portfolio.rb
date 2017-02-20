class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :stocks

  validates_presence_of :name
  validates_uniqueness_of :name, scope: :user_id, message: "Portfolio with the name already exists!"

  def current_value
    self.stocks.inject {|total, stock| total += stock.current_value}
  end

  def cost_basis
    self.stocks.inject {|total, stock| total += stock.cost_basis}
  end

  def net_profit
    self.stocks.inject {|total, stock| total += stock.net_profit}
  end

end
