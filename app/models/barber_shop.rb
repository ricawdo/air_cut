class BarberShop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
<<<<<<< HEAD
  has_many_attached :photo, dependent: :destroy
=======
  has_many_attached :photos
  has_many_attached :portfolios
  has_many :shop_services
>>>>>>> f179e4a2c58208f5c685b61f0551d0324fb7e236
end
