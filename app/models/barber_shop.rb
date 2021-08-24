class BarberShop < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many_attached :portfolios
end
