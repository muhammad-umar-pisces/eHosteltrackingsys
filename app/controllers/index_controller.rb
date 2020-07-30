class IndexController < ApplicationController
before_action :authenticate_user!, except: [:index]
  def index
  	@firstpage = Hostel.limit(9) 	
  end
 def latest
 	@latest = Hostel.order(created_at: :desc).limit(1)
 	
 end
end
