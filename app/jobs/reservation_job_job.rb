class ReservationJobJob < ApplicationJob
  queue_as :default

  def perform(sendemail)
    @sendemail = sendemail
    mail(to: @sendemail.email, subject: 'Welcome to My Awesome Site')
  end
end
