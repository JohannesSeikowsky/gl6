class SessionsController < ApplicationController
  def create
  	begin
	  	api_values = request.env['omniauth.auth']
		# @user = User.find_or_create_by(uid: api_values['uid'])
		if @user = User.find_by_uid(api_values['uid'])
			# found a user.
		else
			# create a user.
			@user = User.new
			@user.uid = api_values['uid']
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
			# GeneralMailer.signup_mail().deliver
		end

		# user is found or created
		session[:user_id] = @user.id	
		if current_user
			redirect_to user_account_path(id: current_user.id), notice: "youre logged in.")
		else
			redirect_to root_path, notice: "didnt work, try again."
		end
  	rescue
  		# on failure - redirect
  		redirect_to root_path, notice: "didnt work. try again."
  	end
  end

  def delete
    if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path, notice: "Logged out."
  end
end


