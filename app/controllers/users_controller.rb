class UsersController < ApplicationController
  def account
  	if @user = current_user
		@contacts = @user.contacts.order('updated_at DESC')
    	@contacts = @contacts.sort_by { |a| a.this_month ? 0 : 1 }
  	else
  		redirect_to root_path, notice: "please log in."
	end
  end
end
