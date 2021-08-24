class BarberShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @barber_shops = policy_scope(BarberShop)
  end
end
