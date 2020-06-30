class SearchesController < ApplicationController
before_action :authenticate_user!, except: [:new, :show, :create]
	def new
		@search = Search.new
		# @location = Hostel.uniq.pluck(:location) 
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])

	end

	def search_params
		params.require(:search).permit(:name, :location, :min_price, :max_price, :hostel_type)
	end

end
