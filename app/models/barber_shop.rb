class BarberShop < ApplicationRecord
  has_many_attached :photos
  has_many_attached :portfolios
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :shop_services
  has_many :services, through: :shop_services
  has_many :bookings, through: :booking_services
  has_many :booking_services, through: :shop_services
  has_many :reviews, through: :bookings

  def average_rating
    return 0 if reviews.empty?
    reviews.pluck(:rating).sum / reviews.length.to_f
  end

  def rating_count(integer)
    reviews.where(rating: integer).count
  end

  def rating_count_percent(integer)
    rating_count(integer).fdiv(reviews.count) * 100
  end
end
