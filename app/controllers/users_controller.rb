class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  	redirect_to tasks_path
	  else
	  	render "new"
	  end
  end


 private

 def user_params
 	params.require(:user).permit(:name, :phone_number, :eamil, :password_digest)
 end
end
