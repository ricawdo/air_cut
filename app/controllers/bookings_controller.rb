class BookingsController < ApplicationController
  def new
    @user = current_user
    @booking = Booking.new
    @shop_service = ShopService.find( params[:shop_service_id])
    authorize @booking
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    authorize @booking
    @shop_service = ShopService.find(params[:booking][:shop_service_id])
    @booking.user = current_user
    if @booking.save
      @booking_service = BookingService.create(booking: @booking, shop_service: @shop_service)
      @booking.update(total_amount: @booking.shop_services.sum(:price))
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_datetime, :end_date)
  end
end
