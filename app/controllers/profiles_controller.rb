class ProfilesController < ApplicationController
  def create_or_update_profile
	
	if contact.profile.nil?
	  contact.create_profile(profile_params)
	else
	  contact.profile.update_attributes(profile_params)
	end
	
  end

  def profile_params
  	params.require(:profile).permit(:comment)
  end
end
