class SessionsController < ApplicationController
	skip_before_action :require_login, only: [:login, :validate]

	def destroy
		session.delete(:user_id)
		flash[:success] = "Logged out successfully."
		redirect_to '/login'
	end

	def login
		render 'login_page'
	end

	def validate
	 	user = User.find_by(username: params[:username])

		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id

			flash[:success] = "Successfully logged in"
			redirect_to root_path

		else
			flash[:warning] = "Invalid username or password"
			redirect_to '/login'
		end
	end
end