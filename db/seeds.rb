# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
	100.times do
  		Listing.create!(title: Faker::Address.city, user_id: rand(1..3), description: Faker::Book.title,location: Faker::Number.interger,image: File.open('app/assets/other/010-jupiter-residence-fava-design-group.jpg'))
	end
end