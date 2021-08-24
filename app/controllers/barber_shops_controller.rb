class BarberShopsController < ApplicationController
  def show
    @barber_shop = BarberShop.find(params[:id])
  end
end
