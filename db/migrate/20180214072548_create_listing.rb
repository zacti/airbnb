class CreateListing < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
    	t.timestamps null: false
    	t.string :title, null:false
    	t.string :description, null:false
    	t.string :location, null:false
    end
  end
end
