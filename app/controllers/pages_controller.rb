class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to user_account_path(current_user)
  	end
    render layout: false
  end
end
