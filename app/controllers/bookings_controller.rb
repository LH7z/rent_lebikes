class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def owned
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    bike = Bike.find(params[:bike_id])
    @booking.bike = bike
    @booking.totalprice = bike.price.to_i * (@booking.checkout - @booking.checkin)

    return unless @booking.save

    redirect_to booking_path(@booking)
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

    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :totalprice)
  end
end
