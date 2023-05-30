class BikesController < ApplicationController
  before_action :set_bike, only: %i[show edit update destroy]

  def index
    @bike = Bike.all
  end

  def show
    @bike = Bike.new
  end

  def new
    @bike = Bike.new
  end

  def edit
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to @bike, notice: "bike was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike, notice: "bike was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_url, notice: "bike was successfully destroyed."
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:price, :description)
  end
end
