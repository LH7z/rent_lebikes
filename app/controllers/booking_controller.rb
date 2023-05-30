class BookingController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @booking = booking.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save

    redirect_to booking_path(@restaurant)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(booking_params)

    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy

    redirect_to booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :bike_id, :Checkin, :Checkout, :total_price)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
