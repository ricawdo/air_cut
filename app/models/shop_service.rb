class ShopService < ApplicationRecord
  belongs_to :service
  belongs_to :barber_shop
  has_many :booking_services
end
