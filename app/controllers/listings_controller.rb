class ListingsController < ApplicationController
	def index
		@listall = Listing.all

	end

	def create
		@list = Listing.new(listing_params)
		@list.save
		redirect_to root_path
	end

	def new
		@listing = Listing.new
	end

	def show
	end

	def edit
		@listing = Listing.find(params[:id])

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
      params.require(:listing).permit(:title, :description, :location)
    end


end