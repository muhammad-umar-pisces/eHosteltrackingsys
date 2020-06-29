class IndexController < ApplicationController
before_action :authenticate_user!, except: [:index]
  def index
  	@firstpage = Hostel.limit(9) 	
  end
end
