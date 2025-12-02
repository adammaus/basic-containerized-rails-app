class ApplicationController < ActionController::Base
	before_action :require_login

	add_flash_types :info, :error, :warning

	private
	def logged_in?
		!!session[:user_id]
	end

	def require_login
		unless logged_in?
			flash[:warning] = "Please login to continue"
			redirect_to '/login'
		end
	end
end
