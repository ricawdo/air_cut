class Service < ApplicationRecord
  has_many :barber_shops, through: :shop_services
  has_many :shop_services, dependent: :destroy
end

