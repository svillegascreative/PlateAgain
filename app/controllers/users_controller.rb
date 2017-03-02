class UsersController < ApplicationController

  before_action :ensure_logged_in, only: [:update, :destroy]

  def index
    redirect_to root_url
  end

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
      redirect_to user_path(@user)
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

    def providers
      if @users = users.where()
    end
    def acceptors
    end
  end

  def dashboard
    @user = load_user
  end


  private

  def load_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :phone, :description, :homepage, :photo, :registration, :password, :password_confirmation)
  end

end
