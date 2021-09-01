class BookingsController < ApplicationController
  def new
    @user = current_user
    @shop_services = ShopService.where(id: params[:booking_services])
    @total_duration = @shop_services.map{|shop_service| shop_service.duration}.sum
    @total_price = @shop_services.map{|shop_service| shop_service.price}.sum
    @barber_shop = @shop_services.first.barber_shop
    @booking = Booking.new
    authorize @booking
    if params[:date_validate]
      @chosen_date = Date.parse(params[:date_validate])
      @open_schedules = @barber_shop.open_schedules(@chosen_date)
    end
    respond_to do |format|
      format.html
      format.text { render partial: 'bookings/form.html', locals: { booking: @booking, shop_services: @shop_services, barber_shop: @barber_shop, open_schedules: @open_schedules, chosen_date: @chosen_date } }
    end
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
