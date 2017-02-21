class SessionController < ApplicationController
  def login
    if current_user
      redirect_to portfolios_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to portfolios_path
    else
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

end
