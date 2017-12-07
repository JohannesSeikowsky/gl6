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

  def create_many
    if @user = current_user
      begin
        names = contacts_params[:names]
        names_array = names.split(',')
        names_array.each do |name|
            @user.contacts.create(name: name)    
        end
        redirect_to user_account_path(current_user), notice: 'contacts created.'
      rescue
        redirect_to user_account_path(current_user), notice: 'some error occured, try again.'
      end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  # contact params
  def contacts_params
  	params.require(:contact).permit(:user_id, :name, :names)
  end

end
