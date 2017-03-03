class ListingsController < ApplicationController
  before_action :ensure_logged_in

  def index
   @listings = Listing.all
  end

  def show
    find_listing
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id

    if @listing.save
      redirect_to dashboard_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    find_listing
  end

  def update
    find_listing

    if @listing.update(listing_params)
      redirect_to dashboard_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    find_listing
    @listing.destroy
    redirect_to dashboard_path(@user)
  end


  private

  def find_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:item_name, :quantity, :perishable, :expiry_date, :available_until, :contact_name, :contact_phone, :contact_email, :picture, :notes, :user_id)
  end

end
