class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :destroy]

  def index
    @listing = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listings = Listing.new
  end

  def create
    @listing = List.new(listing_params)
    @listing.save
  end

  def destroy
    @listing.destroy
    redirect_to index_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :content)
  end
end
