class ContactsController < ApplicationController
  def new
  	@user = User.find(params[:contact][:user_id])
  	@contact = @user.contacts.build(contacts_params)
  	if @contact.save
  		redirect_to user_account_path(@user), notice: "contact created."
 	else
  		redirect_to user_account_path(@user), notice: "try again."
  	end	
  end

  # params function
  def contacts_params
  	params.require(:contact).permit(:user_id, :name)
  end
end
