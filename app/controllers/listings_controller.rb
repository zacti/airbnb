class ListingsController < ApplicationController
	def index
		@listall = Listing.order(:title).page params[:page]
		@listsearch = Listing.where(nil)
		filtering_params(params).each do |key, value|
			@listsearch = @listsearch.public_send(key, value) if value.present?
		end
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

    def filtering_params(params)
    	params.slice(:title, :description, :location)
    end

end