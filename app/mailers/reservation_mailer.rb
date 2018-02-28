class ReservationMailer < ApplicationMailer

	default from:'zaczac0108@gmail.com'

	def booking_email(customer,host)
		@customer = customer
		@host = host
		@url = 'https://zacbnb.herokuapp.com/'
	 	# @reservation_id = reservation_id	
		mail(to: @customer.email, subject: 'Welcome to My Awesome Site')
	end
end
