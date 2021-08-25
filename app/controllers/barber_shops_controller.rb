class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :search ]

  def index
    @barber_shops = policy_scope(BarberShop)
  end
  
  def search
    if params[:query].present?
      @barber_shops = BarberShop.where(address: params[:query])
    else
      @barber_shops = BarberShop.all
    end
    authorize @barber_shops
  end
end
