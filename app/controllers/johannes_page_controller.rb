class JohannesPageController < ApplicationController

def email_subscriber
	Subscriber.create(email: params[:email_subscriber][:email])
	redirect_to root_path, notice: "Thank you!"
end

def new_page_user
	PageUser.create(medium_link: params[:new_page_user][:medium_link],
		email: params[:new_page_user][:email])
	redirect_to root_path, notice: "Thank you!"
end

end

# email notification
# flash notice on root
# push to production, run rake...

# Pageuser - email - medium_link
# 