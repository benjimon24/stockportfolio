class StocksController < ApplicationController
  before_action :find_stock, only: [:edit, :destroy]

  def show
    @stock = StockQuote::Stock.json_quote(params[:id])["quote"]
    if @stock
      # render json: @stock
    else
      @stock.response_code
    end
  end

  def search
    root =  "http://stocksearchapi.com/api/?search_text=#{params[:name]}&api_key=#{api_key}"
    response = Net::HTTP.get(URI(root))
    #company_name: "Apple Inc."
    #company_symbol: "AAPL"
    #listing_exchange: "NASDAQ"
    if response
      render json: response
    else
      status 404
    end
  end

  def new
    @stock = Stock.new
  end

  def create
    existing_stock =  is_in_portfolio
    @stock = Stock.new(stock_params)

    if @stock.valid?
      if existing_stock
        existing_stock.update(buy_price: new_cost_basis(existing_stock), volume: new_volume(existing_stock))
        redirect_to portfolios_path
      else
        @stock.save
        redirect_to portfolios_path
      end
    else
      flash[:alert] = "Error creating stock!"
    end
  end

  def edit
  end

  def update
    @stock = Stock.new(stock_params)
    existing_stock =  is_in_portfolio

    if existing_stock && enough_shares?(existing_stock)
      binding.pry
      existing_stock.update(
        buy_price: new_cost_basis(existing_stock),
        volume: new_volume(existing_stock))

      redirect_to '/portfolios'
    else
      flash[:alert] = "Error selling stock!"
    end
  end

  def destroy
    # if @stock.destroy
    #   redirect_to portfolios_path
    # else
    #   flash[:alert] = "Error selling stock!"
    # end
  end


private
  def api_key
    "ad66629db14dad47e02a19f582436c500560afcc"
  end

  def new_cost_basis(existing_stock)
    (existing_stock.buy_price + @stock.buy_price) / 2
  end

  def new_volume(existing_stock)
    existing_stock.volume + @stock.volume
  end

  def enough_shares?(existing_stock)
    existing_stock.volume >= stock_params[:volume].to_i
  end

  def is_in_portfolio
    existing_stock = Stock.where(portfolio_id: stock_params[:portfolio_id], symbol: stock_params[:symbol])

    if existing_stock.length > 0
      existing_stock[0]
    else
      nil
    end
  end

  def stock_params
    params.require(:stock).permit(:portfolio_id, :name, :buy_price, :volume, :symbol)
  end

  def find_stock
    @stock = stocks.find_by(id: params[:id])
  end
end
