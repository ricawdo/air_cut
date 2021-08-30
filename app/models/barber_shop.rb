class BarberShop < ApplicationRecord
  has_many_attached :photos
  has_many_attached :portfolios
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :shop_services
  has_many :services, through: :shop_services
  has_many :booking_services, through: :shop_services
  has_many :bookings, through: :booking_services
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

  def available_days#_for(seconds)
    week_days = ((x = Time.now.to_date.next)..(x + 14)).to_a
    days = {
      "Sunday" => 'dimanche',
      "Monday" => 'lundi',
      "Tuesday" => 'mardi',
      "Wednesday" => 'mercredi',
      "Thursday" => 'jeudi',
      "Friday" => 'vendredi',
      "Saturday" => 'samedi',
    }
    week_days.select do |day|
      opening_days.include?(days[day.strftime('%A')])
    end
  end

  def closed_schedules(date)
    all_closed_datetimes = bookings.flat_map do |booking|
      booking.closed_datetimes
    end
    all_closed_datetimes.select do |closed_datetime|
      closed_datetime.to_date == date
    end
  end

  def open_schedules(date)
    open_scheds = [opening_hour(date)]
    o_date = opening_hour(date)
    until o_date == closing_hour(date) do
      open_scheds << o_date += 30.minute
    end
    open_scheds.delete_at(-1)
    open_scheds - closed_schedules(date)
  end

  def opening_hour(date)
    open_hours = opening_hours[0].split(":").map{|i| i.to_i}
    date.to_datetime + open_hours[0].hour + open_hours[1].minute
  end

  def closing_hour(date)
    close_hours = opening_hours[1].split(":").map{|i| i.to_i}
    date.to_datetime + close_hours[0].hour + close_hours[1].minute
  end
end
