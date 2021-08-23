class CreateShopServices < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :barber_shop, null: false, foreign_key: true
      t.integer :price
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
