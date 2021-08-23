class CreateBookingServices < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_services do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :shop_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
