class StocksController < ApplicationController
  before_action :find_stock, only: [:edit, :update, :destroy]

  def show
    @stock = StockQuote::Stock.json_quote(params[:id])["quote"]
    if @stock
      render json: @stock
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
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to portfolios_path
    else
      flash[:alert] = "Error creating stock!"
    end
  end

  def edit
  end

  def update
    if @stock.update(stock_params)
      redirect_to portfolios_path
    else
      flash[:alert] = "Error updating stock!"
      render 'edit'
    end
  end

  def destroy
    if @stock.destroy
      redirect_to portfolios_path
    else
      flash[:alert] = "Error selling stock!"
    end
  end


private
  def api_key
    "ad66629db14dad47e02a19f582436c500560afcc"
  end

  def stock_params
    params.require(:stocks).permit(:name, :buy_price, :volume, :symbol)
  end

  def find_stock
    @stock = stocks.find_by(id: params[:id])
  end
end
