class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_services, dependent: :destroy
  has_many :shop_services, through: :booking_services
  has_many :services, through: :shop_services
  has_many :reviews, dependent: :destroy

  validates :start_datetime, presence: true
  validates :end_datetime, presence: true 

  scope :past, -> { where('end_datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('end_datetime > ?', DateTime.now) }
end
