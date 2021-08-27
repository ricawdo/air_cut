class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @shop_service = ShopService.find( params[:shop_service_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @shop_service = ShopService.find(params[:booking][:shop_service_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_datetime, :end_date)
  end
end
