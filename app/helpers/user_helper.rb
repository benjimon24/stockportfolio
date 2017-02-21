module UserHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def login?
    !!current_user
  end

  def require_user
    redirect '/session/login' unless current_user
  end

  def authorized?
    session[:user_id] == @portfolio.user_id
  end

  def authorized_user?
    redirect_to portfolios_path unless authorized?
  end
end