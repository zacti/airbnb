class ListingsController < ApplicationController
	def index
		@listall = Listing.order(:title).page params[:page]
	

	end

	def create
		@list = current_user.listings.new(listing_params)
		if @list.save
			redirect_to root_path
		else
			redirect_to new_listing_path
		end

	end

	def new
		@listing = Listing.new
	end


	def show
	end

	def edit
		@listing = current_user.listings.find(params[:id])
	end
	
	def update
		@listing = Listing.find(params[:id])

		@listing.update_attributes(listing_params)
		redirect_to root_path
	end

    def destroy
    	Listing.delete(params[:id])
    	redirect_to listings_path
    end

	private

    def listing_params
      params.require(:listing).permit(:title, :description, :location, :image,:amenities => [])
    end


end