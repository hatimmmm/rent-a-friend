class PagesController < ApplicationController
  def home
  end
  def dashboard
    @user = current_user
    @listings = Listing.where(user_id: current_user.id)
    @requests = Request.where(listing_id: @listings.pluck(:id))

  end
end
