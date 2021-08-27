class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_services, dependent: :destroy
  has_many :shop_services, through: :booking_services
  has_many :services, through: :shop_services
  has_many :reviews, dependent: :destroy
end
