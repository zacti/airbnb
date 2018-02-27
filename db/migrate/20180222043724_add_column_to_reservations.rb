class AddColumnToReservations < ActiveRecord::Migration[5.0]
  def change
  	add_column :reservations, :guests, :string
  end
end
