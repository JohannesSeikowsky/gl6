class ProfilesController < ApplicationController
  def create_or_update_profile
    if current_user
    	  contact = Contact.find(params[:contact_id])
	    	if contact.profile
          contact.profile.update(profile_params)
          redirect_to user_account_path(current_user), notice: "Your Notes have been updated."
        else
          contact.build_profile(profile_params)
  	    	if contact.save
  	    		redirect_to user_account_path(current_user), notice: "Your Notes have been updated."
  	    	else
  	    		redirect_to user_account_path(current_user), notice: "an error occured, try again."
  	    	end
        end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  def profile_params
  	params.require(:profile).permit(:comment)
  end
end
