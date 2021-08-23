class AddColumnsToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :gender, :string
  end
end
