class UsersController < ApplicationController
	before_filter :find_agency_id
	def new
		@user = @agency.users.build
	end

	private
		def find_agency_id
			@agency = Agency.find(params[:agency_id])
		end
end
