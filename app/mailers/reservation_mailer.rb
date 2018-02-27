class ReservationMailer < ApplicationMailer

	default from:'yeeyang@gmail.com'

	def booking_email(customer,host)
		@customer = customer
		@host = host
		@url = 'http://localhost:3000'
	 	# @reservation_id = reservation_id	
		mail(to: @customer.email, subject: 'Welcome to My Awesome Site')
	end
end
