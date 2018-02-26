class AddUserIdToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :user, foreign_key: true, index:true
    add_column :listings, :country, :string
  end
end
