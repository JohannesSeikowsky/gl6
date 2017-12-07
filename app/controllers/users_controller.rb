class UsersController < ApplicationController
  def account
  	unless current_user
  		redirect_to root_path, notice: "please log in."
  	else
		@user = current_user
		@contacts = @user.contacts
	end
  end
end
