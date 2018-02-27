class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
    	t.timestamps null: false
    	t.string :startdate, null:false
    	t.string :enddate,null:false
    end
  end
end
