class Booking < ApplicationRecord
  belongs_to :user
  has_many :booking_services, dependent: :destroy
  has_many :shop_services, through: :booking_services
  has_many :services, through: :shop_services
  has_many :reviews, dependent: :destroy

  attr_accessor :start_schedule_time

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
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true

  scope :past, -> { where('end_datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('end_datetime > ?', DateTime.now) }

  def barber_shop
    shop_services.first.barber_shop
  end

  def duration_in_minutes
    ((end_datetime - start_datetime) / 60).round
  end
end
