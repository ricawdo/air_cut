class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search, :map]
  def index
    @user = current_user
    @barber_shops = policy_scope(BarberShop)
     @markers = @barber_shops.geocoded.map do |barber_shop|
      { lat: barber_shop.latitude, lng: barber_shop.longitude, info_window: render_to_string(partial: "info_window", locals: { barber_shop: barber_shop }) }
    end
  end

  def search
    skip_authorization
    @user = current_user
    if params[:address].present?
      @barber_shops = policy_scope(BarberShop).all.near(params[:address], 10)
      @services = Service.all
      @destination = params[:address]
    else
      @services = Service.select {|service| service.gender == params[:gender] && service.name == params[:service] }
      @shop_services = @services.map { |service| ShopService.select { |shop_service| shop_service.service == service } }.flatten
      @barber_shops = @shop_services.map { |shop_service| BarberShop.find(shop_service.barber_shop_id) }.uniq
      @barber_shops = BarberShop.where(id: @barber_shops.map(&:id)).near(params[:destination].split(",")[0], 5)
      @markers = @barber_shops.geocoded.map do |barber_shop|
        { lat: barber_shop.latitude, lng: barber_shop.longitude, info_window: render_to_string(partial: "info_window", locals: { barber_shop: barber_shop }) }
      end
      render :index
    end
  end

  def show
    @user = current_user
    @barber_shop = BarberShop.find(params[:id])
    authorize @barber_shop
    @markers = [{ lat: @barber_shop.latitude, lng: @barber_shop.longitude, info_window: render_to_string(partial: "info_window", locals: { barber_shop: @barber_shop }) }]
  end
end
