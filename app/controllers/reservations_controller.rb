class ReservationsController < ApplicationController
  def index
  	@reservall =Reservation.all
  end

  def new
  	@reservation = Reservation.new
  	@listing =Listing.find(params[:listing_id,])
  end

  def create

    listing = Listing.find(params[:listing_id])
    @reserve = listing.reservations.new(reservation_params)
    @reserve.user_id = current_user.id

  	if @reserve.save
      @listing = @reserve.listing
      redirect_to listing_reservation_path(listing, @reserve)
  	else
  		redirect_to new_listing_reservation_path
  	end
  end

  def show
      @listing =Listing.find(params[:listing_id,])
  end

  	private

    def reservation_params
      params.require(:reservation).permit(:startdate, :enddate, :guests)
    end

    
end

