class BikesController < ApplicationController
  before_action :set_bike, only: %i[show]

  def new
    @bike = Bike.all
  end

  def show
    @bike = Bike.new
  end

  
  private

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
