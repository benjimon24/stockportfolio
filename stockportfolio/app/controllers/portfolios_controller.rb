class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:edit, :update, :show, :destroy]
  
  def index
<<<<<<< HEAD
    render 'portfolios/index'
  end

  def create

=======
    current_user.portfolios.all
>>>>>>> 1862b7005e41077625a12328cac823a885d9922e
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path
    else
      status 404
    end
  end


  def edit
  end

  def show
  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path
    else
      flash[:alert] = "Error updating portfolio!"
      render 'edit'
    end
  end

  def destroy
    if @portfolio.destroy
      redirect_to portfolios_path
    else
      flash[:alert] = "Error deleting portfolio!"
    end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:name)
    end

    def find_portfolio
      @portfolio = Portfolio.find_by(id: params[:id])
    end
end
