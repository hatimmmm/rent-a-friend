class PagesController < ApplicationController
  def home
  end
  def dashboard
    @user = current_user
    @listings = @user.listings
    @requests = Request.where(listing_id: @listings.pluck(:id))
    @reviews = @user.reviews

  end

  def profiles
    @user = current_user
  end
end
