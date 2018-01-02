class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to user_account_path(current_user)
  	else
	    render layout: false
  	end
  end

  def backend
  	@users = User.all 
  	@users_count = @users.count
  	@reminders = Reminder.all
  end
end
