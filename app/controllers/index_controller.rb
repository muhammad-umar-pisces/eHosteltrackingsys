class IndexController < ApplicationController
before_action :authenticate_user!, except: [:index]
  def index
  	@firstpage = Hostel.take(20)
  end
  def show
  	 @show = Hostel.find(params[:id])
  end
end
