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
        redirect_to user_account_path(current_user), notice: 'an error occured, try again.'
      end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  def create_many_onboarding
    if @user = current_user
      begin
        names = contacts_params[:names]
        names_array = names.split(',')
        names_array.each do |name|
            @user.contacts.create(name: name)    
        end
        redirect_to quick_intro_path
      rescue
        redirect_to quick_intro_path
      end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  def update
    if @user = current_user
      @contact = Contact.find(params[:id])
      begin
        @contact.update(contacts_params)
        respond_to do |format|
          format.html { redirect_to user_account_path(current_user), notice: 'contact updated.' }
          format.js
        end
      rescue
        respond_to do |format|
          format.html { redirect_to user_account_path(current_user), notice: 'some error occured, try again.' }
          format.js
        end
      end
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  def update_last_contacted
    if @user = current_user
      begin
        @contact = Contact.find(params[:contact_id])
        @contact.last_contacted = Time.now
        @contact.save
        redirect_to user_account_path(current_user), notice: "Well done! Record is updated."
      rescue
        redirect_to user_account_path(current_user), notice: "sorry, please try again."
      end
    else
      redirect_to root_path, notice: 'please log in.'
    end   
  end



  def delete
    if @user = current_user
      @contact = Contact.find(params[:id])
      @contact.destroy
      redirect_to user_account_path(current_user), notice: 'contact deleted.'
    else
      redirect_to root_path, notice: 'please log in.'
    end
  end

  # contact params
  def contacts_params
  	params.require(:contact).permit(:user_id, :name, :this_month, :interval, :email, :names, :last_contacted)
  end

end
