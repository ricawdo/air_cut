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
      @services = Service.where(gender: params[:gender], name: params[:service])
      @barber_shops = BarberShop.all
      render :index
    end
    authorize @barber_shops
  end

  def show
    @barber_shop = BarberShop.find(params[:id])
    authorize @barber_shop
  end
end
