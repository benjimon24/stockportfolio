module PortfolioHelper
  def user_portfolios
    Portfolio.where(user_id: current_user.id)
  end
end
