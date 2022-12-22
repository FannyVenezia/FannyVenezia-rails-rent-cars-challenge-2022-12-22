class CarsController < ApplicationController
  def index
    @cars = Car.all

    flash.now[:notice] = "We have exactly #{@cars.size} cars available"
  end

  def show
    @car = Car.find(params[:id])
  end
end
