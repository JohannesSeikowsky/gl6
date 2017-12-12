class UsersController < ApplicationController
  def account
  	if @user = current_user
		@contacts = @user.contacts.order('updated_at DESC')

  	else
  		redirect_to root_path, notice: "please log in."
	end
  end
    # @gees_contacts_all = @gees_contacts_all.sort_by { |a| a.this_month ? 0 : 1 }
end
