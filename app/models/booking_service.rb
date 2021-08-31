class BookingService < ApplicationRecord
  belongs_to :booking
  belongs_to :shop_service
  has_one :service, through: :shop_services
end
