class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @cars = Car.all

    flash.now[:notice] = "Nous avons exactement #{@cars.size} #{@cars.size > 1 ? 'voitures disponibles' : 'voiture disponible'}"
  end

  def show
    @car = Car.find(params[:id])

    @booking = Booking.new
  end
end
