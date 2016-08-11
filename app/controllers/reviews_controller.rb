class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # @restaurant.reviews.build(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
