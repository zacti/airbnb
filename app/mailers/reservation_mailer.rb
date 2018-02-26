class ReservationMailer < ApplicationMailer

	default from:'zaczac0108@gmail.com'

	def booking_email(customer, host, reservation_id)
		@customer = customer		

	end
end
