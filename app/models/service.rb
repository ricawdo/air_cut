class Service < ApplicationRecord
  has_many :shop_services, dependent: :destroy
  has_many :barber_shops, through: :shop_services
end

