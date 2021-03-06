class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show]

  def new
    @user =User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id    
      redirect_to portfolios_path
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to portfolios_path
    else
      flash[:alert] = "Error editing user!"
      render 'edit'
    end
  end

  def show
  end

  def logout
    sessions[:user_id]=nil
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

    def find_user
      @user = User.find_by(id: params[:id])
    end
end
