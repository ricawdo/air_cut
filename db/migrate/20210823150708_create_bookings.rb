class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :total_amount

      t.timestamps
    end
  end
end
