class ListingsController < ApplicationController
    def index
        @listings = Listing.all
    end

    def show
        @review = Review.new

        @listing = Listing.find(params[:id])
        @request = Request.new
        @this_request = @listing.requests.find_by(user_id: current_user.id)
        @user = current_user

    end

    def new
        @listing = Listing.new
    end
    def create
        
        @listing = Listing.new(listing_params)
        @listing.user = current_user
        if @listing.save
            redirect_to listing_path(@listing)
        else
            render :new
        end
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
        @listing = Listing.find(params[:id])
        @listing.update(listing_params)
        flash[:notice] = "Listing successfully updated."
        redirect_to listing_path(@listing)
    end

    def destroy
        @listing = Listing.find(params[:id])
        @listing.destroy
        flash[:notice] = "Listing successfully deleted."
        redirect_to dashboard_path
    end

    private

    def listing_params
        params.require(:listing).permit(:title, :content, :availability,:price)
    end

end
