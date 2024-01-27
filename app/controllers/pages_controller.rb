class PagesController < ApplicationController
  def home
  end
  def dashboard
    @user = current_user
    @listings = @user.listings
    @requests = Request.where(listing_id: @listings.pluck(:id))
    @reviews = Review.where(listing_id: @listings.pluck(:id))
  end

  def profile
    @user = current_user
    @average_rating = @user.average_rating
  end
end
