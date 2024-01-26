class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @reviw = Review.new(review_params)
  end

  def hi_master_ghita
    puts "Hi master Ghita!"
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
