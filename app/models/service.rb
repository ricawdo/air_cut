class Service < ApplicationRecord
  has_many :shop_services, dependent: :destroy
end
