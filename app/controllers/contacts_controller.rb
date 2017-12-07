class ContactsController < ApplicationController
  
  def create
    if @user = current_user
    	@contact = @user.contacts.build(contacts_params)
    	if @contact.save
    		redirect_to user_account_path(current_user), notice: "contact created."
   	  else
    		redirect_to user_account_path(current_user), notice: "contact not created, try again."
    	end
    else
      redirect_to root_path, notice: "please log in."
    end
  end

  # params function
  def contacts_params
  	params.require(:contact).permit(:user_id, :name)
  end

end
