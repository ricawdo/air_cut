class BarberShopsController < ApplicationController
  def show
    @barber_shop = BarberShop.find(params[:id])
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @barber_shops = policy_scope(BarberShop)
  end
end
