class UsersController < ApplicationController
  def new
    @stock = Stock.new
  end
end
