class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :stocks, dependent: :destroy

  validates :name, presence: true
  validates :name, scope: :user_id, message: "Portfolio with the name already exists!", uniqueness: true

  def current_value
    self.stocks.inject(0) {|total, stock| total += stock.current_value}
  end

  def cost_basis
    self.stocks.inject(0) {|total, stock| total += stock.cost_basis}
  end

  def net_profit
    self.stocks.inject(0) {|total, stock| total += stock.net_profit}
  end

  def percent_change
    self.net_profit / self.cost_basis
  end

end
