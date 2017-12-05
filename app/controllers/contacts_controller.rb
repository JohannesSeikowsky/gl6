class ContactsController < ApplicationController
  def new
  	@user = User.find(contacts_params[:contact][:user_id])
  	redirect_to user_account_path(@user)
  end

  def contacts_params
  	params.require(:contact).permit(:user_id, :name)
  end
end