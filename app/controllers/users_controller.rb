class UsersController < Clearance::UsersController
	def index
		@user=current_user
	end

	def show
	
	end
end