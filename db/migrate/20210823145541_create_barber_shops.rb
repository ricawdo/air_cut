class CreateBarberShops < ActiveRecord::Migration[6.0]
  def change
    create_table :barber_shops do |t|
      t.string :name
      t.string :address
      t.boolean :remote, default: false
      t.integer :opening_days, array: true, default: []
      t.integer :closing_days, array: true, default: []
      t.string :opening_hours, array: true, default: []
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
