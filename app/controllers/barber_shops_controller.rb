class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :map]
  def index
    @barber_shops = policy_scope(BarberShop)
    if params[:query].present?
      @barber_shops = BarberShop.where(address: params[:query])
    else
      @barber_shops = BarberShop.all
    end
    @markers = @barber_shops.geocoded.map do |barber_shop|
      { lat: barber_shop.latitude, lng: barber_shop.longitude, info_window: render_to_string(partial: "info_window", locals: { barber_shop: barber_shop }) }
    end
  end

  def show
    @barber_shop = BarberShop.find(params[:id])
    authorize @barber_shop
  end
end
