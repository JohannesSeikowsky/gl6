class UsersController < ApplicationController
  def account
	@user = User.find(params[:id])
	@contacts = @user.contacts
  end
end
