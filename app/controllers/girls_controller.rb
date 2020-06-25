class GirlsController < ApplicationController
	def index
		@girl = Hostel.where(hostel_type: "Girls")
	end
end
