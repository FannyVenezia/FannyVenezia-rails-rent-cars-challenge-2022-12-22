class BookingsController < ApplicationController
  before_action :find_car_id, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_path(@car), notice: "Your booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_car_id
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:accepted, :starts_at, :ends_at, :user_id, :car_id)
  end
end
