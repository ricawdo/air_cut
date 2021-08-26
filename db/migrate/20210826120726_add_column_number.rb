class AddColumnNumber < ActiveRecord::Migration[6.0]
  def change
    add_column :barber_shops, :phone_number, :string
  end
end
