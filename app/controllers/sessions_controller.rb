class SessionsController < ApplicationController
  def create
  	begin
  		# find or create
	  	api_values = request.env['omniauth.auth']
		@user = User.find_or_create_by(uid: api_values['uid']) do |user|
			# gets passed to created
  			begin
  				GeneralMailer.welcome_email(api_values['info']['first_name'], 
  					api_values['info']['email']).deliver
  			rescue
  				#pass
  			end
		end

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
		
		session[:user_id] = @user.id	
		if current_user
			if @user.created_at > 10.minutes.ago 
				redirect_to onboarding_path(id: current_user.id)
			else
				redirect_to user_account_path(id: current_user.id)
			end
		else
			redirect_to root_path, notice: "didnt work, try again."
		end
  	rescue
  		# on failure - redirect
  		redirect_to root_path, notice: "didn't work. try again."
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


