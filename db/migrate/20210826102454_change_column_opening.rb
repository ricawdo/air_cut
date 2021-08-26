class ChangeColumnOpening < ActiveRecord::Migration[6.0]
  def change
    change_column :barber_shops, :opening_hours, :string
  end
end
