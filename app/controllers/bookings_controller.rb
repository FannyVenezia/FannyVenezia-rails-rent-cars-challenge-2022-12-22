class BookingsController < ApplicationController
  before_action :find_car_id, only: %i[create]
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
    @review = Review.new
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: "Félicitations, votre réservation a bien été enregistrée !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_car_id
    @car = Car.find(params[:car_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:accepted, :starts_at, :ends_at, :user_id, :car_id)
  end
end
