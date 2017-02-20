class StocksController < ApplicationController

  def search
    @stocks = StockQuote::Stock.json_quote(params[:symbol])
    if @stocks
      binding.pry
      render json: @stocks
    else
      status 404
    end
  end

end
