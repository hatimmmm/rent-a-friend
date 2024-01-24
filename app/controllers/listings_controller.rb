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
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to listing_path(@listing) }
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "listing/new", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
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
