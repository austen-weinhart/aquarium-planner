class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s #logging the user in
      flash[:welcome] = "Thanks for signing up, #{@user.name}!"
      redirect_to users_path 
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access that page."
      redirect_to login_path
    end
  end
end
