class SessionsController < ApplicationController
  def create
  	# create a user
  	api_values = request.env['omniauth.auth']
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
  end
end