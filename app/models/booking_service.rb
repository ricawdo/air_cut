class BookingService < ApplicationRecord
  belongs_to :booking
  belongs_to :shop_service
end
