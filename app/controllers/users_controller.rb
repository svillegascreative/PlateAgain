class UsersController < ApplicationController

  def providers
    @users = User.where('is_provider = ?', true)
  end

  def acceptors
    @users = User.where('is_provider = ?', false)
  end

  def show
    @user = load_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_show_url
    else
      render :new
    end
  end

  def edit
    @user = load_user
  end

  def update
    @user = load_user

    if @user.update_attributes(user_params)
      redirect_to user_show_url(@user)
    else
      render :edit
    end
  end

  def dashboard
    @user = load_user
  end
 def index
   @user = load_user
 end
  private

  def load_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :phone, :description, :homepage, :photo, :registration)
  end
end
