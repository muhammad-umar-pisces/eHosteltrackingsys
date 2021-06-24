class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	 protect_from_forgery with: :exception

   def chatbot
     debugger
   end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation,:username, :contact_num) }
    end
end
