class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :search ]

  def index
    @barber_shops = policy_scope(BarberShop)
  end
  
  def search
    if params[:address].present?
      @barber_shops = BarberShop.all.near(params[:address], 20)
      @services = Service.all
      @destination = params[:address]
    else
      @services = Service.select {|service| service.gender == params[:gender] && service.name == params[:service] }
      @shop_services = @services.map { |service| ShopService.select { |shop_service| shop_service.service == service } }.flatten
      @barber_shops = @shop_services.map { |shop_service| BarberShop.find(shop_service.barber_shop_id) }.uniq
      # raise
      render :index
    end
    authorize @barber_shops.first
  end

  def show
    @barber_shop = BarberShop.find(params[:id])
    authorize @barber_shop
  end
end
