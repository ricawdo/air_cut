class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_services, dependent: :destroy
  has_many :shop_services, through: :booking_services
  has_many :services, through: :shop_services
  has_many :reviews, dependent: :destroy


  def closed_datetimes
    closed_times = [start_datetime]
    date = start_datetime
    until date == end_datetime do
      closed_times << date += 30.minute
    end
    closed_times = closed_times.map{|cl| cl.to_datetime}
    closed_times.delete_at(-1)
    return closed_times
  end

  def duration
    (start_datetime - end_datetime) / 60
  end
end
