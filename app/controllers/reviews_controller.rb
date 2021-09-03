class ReviewsController < ApplicationController
  def new
    @user = current_user
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user = @user
    authorize @review
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
