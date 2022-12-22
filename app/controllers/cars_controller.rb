class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @cars = Car.all
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: {car: car}),
        image_url: helpers.asset_url("icon-voiture.png")
      }
    end

    flash.now[:notice] = "Nous avons exactement #{@cars.size} #{@cars.size > 1 ? 'voitures disponibles' : 'voiture disponible'}"

    if params[:query].present?
      @cars = Car.where("brand ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.all
    end

  end

  def show
    @car = Car.find(params[:id])

    @booking = Booking.new
  end
end
