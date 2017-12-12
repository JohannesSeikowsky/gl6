class ProfilesController < ApplicationController
  def create_or_update_profile
    if current_user
    	contact = Contact.find(params[:contact_id])
    	if contact.profile.nil?
	    	contact.build_profile(profile_params)
	    	if contact.save
	    		redirect_to user_account_path(current_user), notice: "Comment has been set."
	    	else
	    		redirect_to user_account_path(current_user), notice: "an error occured, try again."
	    	end
	    else
    		contact.profile.update(profile_params)
	    	redirect_to user_account_path(current_user), notice: "Comment has been updated."
    	end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  def profile_params
  	params.require(:profile).permit(:comment)
  end
end
