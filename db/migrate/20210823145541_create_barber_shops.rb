class CreateBarberShops < ActiveRecord::Migration[6.0]
  def change
    create_table :barber_shops do |t|
      t.string :name
      t.string :address
      t.boolean :remote, default: false
      t.text :opening_days, array: true, default: []
      t.date :closing_days, array: true, default: []
      t.time :opening_hours
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
