class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @review.user = current_user
        @review.save
        redirect_to dashboard_path
    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :listing_id)
    end

end
