class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_services
  has_many :reviews
end
