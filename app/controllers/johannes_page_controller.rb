class JohannesPageController < ApplicationController

def email_subscriber
	@submitted_email = params[:email_subscriber][:email]
	@author_of_page = params[:email_subscriber][:author]

	Subscriber.create(email: @submitted_email)
	GeneralMailer.new_email_subscriber(@submitted_email, @author_of_page).deliver
	
	if @author_of_page == "valerie_vaughn"
		redirect_to valerie_vaughn_path, notice: "It worked. Thank you!"
	elsif @author_of_page == "dave_garbutt"
		redirect_to dave_garbutt_path, notice: "It worked. Thank you!"	
	elsif @author_of_page == "james_finn"
		redirect_to james_finn_path, notice: "It worked. Thank you!"
	else
		redirect_to root_path, notice: "It worked. Thank you!"
end

def new_page_user
	# create
	PageUser.create(medium_link: params[:new_page_user][:medium_link],
		email: params[:new_page_user][:email])
	# alert_mail
	GeneralMailer.new_page_user(params[:new_page_user][:medium_link],
		 params[:new_page_user][:email]).deliver
	redirect_to root_path, notice: "It worked. I will be in touch!"
end

end
