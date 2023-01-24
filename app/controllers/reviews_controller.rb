class ReviewsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @car = Car.find(params[:car_id])
    @review.car = @car
    @review.user = current_user
    if @review.save!
      redirect_to car_path(@car)
    else
      flash[:alert] = 'Nous avons rencontré un problème...'
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to car_path(@review.car), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
