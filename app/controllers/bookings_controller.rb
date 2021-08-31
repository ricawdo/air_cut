class BookingsController < ApplicationController
  def new
    @user = current_user
    @shop_service = ShopService.find(params[:shop_service_id])
    @barber_shop = @shop_service.barber_shop
    @booking = Booking.new
    authorize @booking
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    authorize @booking
    @shop_services = ShopService.where(id: params[:booking_services])
    @booking.user = current_user
    @booking.end_datetime = @booking.start_datetime + @shop_services.sum(:duration).minutes
    if @booking.save
      @shop_services.each do |shop_service|
        @booking_service = BookingService.create(booking: @booking, shop_service: shop_service)
      end
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
