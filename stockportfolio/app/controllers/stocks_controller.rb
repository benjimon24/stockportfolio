class StocksController < ApplicationController

  def show
    @stock = StockQuote::Stock.json_quote(params[:symbol]["quote"])
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


private

  def api_key
    "ad66629db14dad47e02a19f582436c500560afcc"
  end
end
