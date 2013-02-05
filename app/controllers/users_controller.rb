class UsersController < ApplicationController
	before_filter :find_agency_id
	def new
		@user = @agency.users.build
	end

	def create 
		@user = @agency.users.build(params[:user])
		@user.save
		redirect_to [@agency]
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to [@agency]
	end

	private
		def find_agency_id
			@agency = Agency.find(params[:agency_id])
		end
end
