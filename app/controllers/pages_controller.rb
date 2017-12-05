class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to user_accout_path(current_user)
  	end
  end
end
