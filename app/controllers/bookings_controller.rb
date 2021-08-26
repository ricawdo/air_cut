class BookingsController < ApplicationController
  def index
  # Scope your query to the dates being shown:
  start_date = params.fetch(:start_date, Date.today).to_date

  # Or, for a weekly view:
    @bookings = Booking.where(starts_at: start_datetime.beginning_of_week..start_datetime.end_of_week)
  end

  def new
    @start_date = Date.today
    @end_date = Date.today + 2.weeks
    @bookings = Booking.where(start_datetime: @start_date, end_datetime: @end_date)
    @barber_shop = BarberShop.find(params[:barber_shop_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
  end

  def show
  end
end
