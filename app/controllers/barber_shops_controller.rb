class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @barber_shops = policy_scope(BarberShop)
    if params[:query].present?
      @barber_shops = BarberShop.where(address: params[:query])
    else
      @barber_shops = BarberShop.all
    end
  end

  def show
    @barber_shop = BarberShop.find(params[:id])
    authorize @barber_shop
  end
end
