class UsersController < ApplicationController
  def account
  	if @user = current_user
		@contacts = @user.contacts
  	else
  		redirect_to root_path, notice: "please log in."
	end
  end
end
