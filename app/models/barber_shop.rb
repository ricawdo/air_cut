class BarberShop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photos
  has_many_attached :portfolios
  has_many :shop_services
  has_many :booking_services, through: :shop_services
  has_many :bookings, through: :booking_services
  has_many :reviews, through: :bookings
end
