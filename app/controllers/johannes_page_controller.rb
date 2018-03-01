class JohannesPageController < ApplicationController

def email_subscriber
	# create
	Subscriber.create(email: params[:email_subscriber][:email])
	# alert_mail
	GeneralMailer.new_email_subscriber(params[:email_subscriber][:email]).deliver
	redirect_to root_path, notice: "It worked. Thank you!"
end

def new_page_user
	# create
	PageUser.create(medium_link: params[:new_page_user][:medium_link],
		email: params[:new_page_user][:email])
	# alert_mail
	GeneralMailer.new_page_user(params[:new_page_user][:medium_link],
		 params[:new_page_user][:email).deliver
	redirect_to root_path, notice: "It worked. Thank you!"
end

end
