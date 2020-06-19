class BoysController < ApplicationController
	def index
		@boy = Hostel.where(hostel_type: "Boys")
	end
end
