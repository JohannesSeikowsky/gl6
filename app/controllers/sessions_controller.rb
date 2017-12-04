class SessionsController < ApplicationController
  def create
  	begin
	  	api_values = request.env['omniauth.auth']
		# find or create
		@user = User.find_or_create_by(uid: api_values['uid'])
		# set attributes
		@user.provider = api_values['provider']
		@user.name = api_values['info']['name']
		@user.first_name = api_values['info']['first_name']
		@user.last_name = api_values['info']['last_name']
		@user.email = api_values['info']['email']
		@user.location = api_values['info']['location']['name']
		@user.country_code = api_values['info']['location']['country']['code']
		@user.description = api_values['info']['description']
		@user.image_url = api_values['info']['image']
		@user.profile_url = api_values['info']['urls']['public_profile']
		@user.save!
		# on success - login and redirect
		session[:user_id] = @user.id	
		redirect_to root_path, notice: "worked."	
  	rescue
  		# on failure - redirect
  		redirect_to root_path, notice: "didnt work."
  	end
  end

  def delete
	if current_user
	  session.delete(:user_id)
	end
	redirect_to root_path, notice: "youre logged out."  	
  end
end
