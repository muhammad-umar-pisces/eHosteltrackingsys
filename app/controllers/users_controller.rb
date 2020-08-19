class UsersController < ApplicationController
	def userprofile

		byebug
		@profile = User.find(params[:id])
		@prifile.update(user_params)
		
	end
	


	private
	def user_params
		params.require(:user).permit(:email, :admin, :contact_num, :username)
	end
end
