class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to "/", notice: "Thank you for signing up!"
		else
			render "new"
		end
	end
	def show
		@user = User.find_by_id(session[:user_id])
		
	end

private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
