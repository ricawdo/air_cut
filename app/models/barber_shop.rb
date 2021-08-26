class BarberShop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photo
  has_many :shop_services
  has_many :services, through: :shop_services
end
