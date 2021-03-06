class UsersController < ApplicationController

  before_action :ensure_logged_in, only: [:dashboard, :edit, :update, :destroy]

  def index
    redirect_to root_url
  end

  def providers
    @users = User.where('is_provider = ?', true)
  end

  def acceptors
    @users = User.where('is_provider = ?', false)
  end

  def listings
    load_user
    load_user_listings
  end

 def show
   @comment = Comment.new
   load_user
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
   load_user_listings
   if current_user
     @current_address = current_user.add_number + '+' + current_user.add_name + '+' + current_user.add_type + '+' + current_user.your_city + '+' + current_user.postal
     @address = @user.add_number + '+' + @user.add_name + '+' + @user.add_type + '+' + @user.your_city + '+' + @user.postal
     @show_address = @user.add_number + ' ' + @user.add_name + ' ' + @user.add_type + ' ' + @user.your_city + ' ' + @user.postal
    else
     @address = @user.add_number + '+' + @user.add_name + '+' + @user.add_type + '+' + @user.your_city + '+' + @user.postal
     @show_address = @user.add_number + ' ' + @user.add_name + ' ' + @user.add_type + ' ' + @user.your_city + ' ' + @user.postal
    end

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      auto_login(@user)
      redirect_to dashboard_path, notice: "Registration successful!"
    else
      flash.now[:alert] = "Registration failed."
      render :new
    end
  end

  def edit
    load_user
  end

  def update
    load_user

    if @user.update_attributes(user_params)
      redirect_to dashboard_path, notice: "Profile updated!"
    else
      flash.now[:alert] = "Profile update failed."
      render :edit
    end
  end

  def dashboard
    @user = current_user
    load_user_listings
  end


  private

  def load_user
    @user = User.find(params[:id])
  end

  def load_user_listings
    if current_user && !current_user.is_provider?
      @listings = Listing.where("claimer_id = ?", current_user.id).where("claimed = ?", true)
    else
      @listings = @user.listings
    end

  end

  def user_params
    params.require(:user).permit(:username,
                                 :name,
                                 :email,
                                 :is_provider,
                                 :full_street_address,
                                 :phone,
                                 :description,
                                 :homepage,
                                 :photo,
                                 :photo_cache,
                                 :remote_photo_url,
                                 :registration,
                                 :password,
                                 :password_confirmation,
                                 :add_number,
                                 :add_name,
                                 :add_type,
                                 :latitude,
                                 :longitude,
                                 :your_city,
                                 :postal)
  end

end
