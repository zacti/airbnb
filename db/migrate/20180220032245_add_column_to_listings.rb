class AddColumnToListings < ActiveRecord::Migration[5.0]
  def change
  	add_column :listings, :kitchen, :boolean, default:false
  	add_column :listings, :amenities, :text, array: true, default: []
  end
end
