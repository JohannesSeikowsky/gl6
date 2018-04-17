class JohannesPageController < ApplicationController

def editing_vaughn_page
	VaughnUser.find(1).update(profile_params)
	GeneralMailer.user_edited_page("vaughn").deliver
	redirect_to valerie_vaughn_path
end

def editing_garbutt_page
	VaughnUser.find(2).update(profile_params)
	GeneralMailer.user_edited_page("garbutt").deliver
	redirect_to dave_garbutt_path
end

def editing_finn_page
	VaughnUser.find(3).update(profile_params)
	GeneralMailer.user_edited_page("finn").deliver
	redirect_to james_finn_path
end

def editing_serifovic_page
	VaughnUser.find(4).update(profile_params)
	GeneralMailer.user_edited_page("serifovic").deliver
	redirect_to muriz_serifovic_path
end

def editing_chalk_page
	VaughnUser.find(5).update(profile_params)
	GeneralMailer.user_edited_page("chalk").deliver
	redirect_to oliver_chalk_path
end

def editing_ven_page
	VaughnUser.find(6).update(profile_params)
	GeneralMailer.user_edited_page("ven").deliver
	redirect_to harry_ven_path
end

def editing_clare_page
	VaughnUser.find(7).update(profile_params)
	GeneralMailer.user_edited_page("clare").deliver
	redirect_to sylvia_clare_path
end


def email_subscriber
	@submitted_email = params[:email_subscriber][:email]
	@author_of_page = params[:email_subscriber][:author]

	Subscriber.create(email: @submitted_email)
	GeneralMailer.new_email_subscriber(@submitted_email, @author_of_page).deliver
	
	if @author_of_page == "valerie_vaughn"
		redirect_to valerie_vaughn_path, notice: "It worked! Thank you."
	elsif @author_of_page == "dave_garbutt"
		redirect_to dave_garbutt_path, notice: "It worked! Thank you."	
	elsif @author_of_page == "james_finn"
		redirect_to james_finn_path, notice: "It worked! Thank you."
	elsif @author_of_page == "muriz_serifovic"
		redirect_to muriz_serifovic_path, notice: "It worked! Thank you."
	elsif @author_of_page == "oliver_chalk"
		redirect_to oliver_chalk_path, notice: "It worked! Thank you."
	elsif @author_of_page == "harry_ven"
		redirect_to harry_ven_path, notice: "It worked! Thank you."
	elsif @author_of_page == "sylva_clare"
		redirect_to sylvia_clare_path, notice: "It worked! Thank you."
	else
		redirect_to root_path, notice: "It worked! Thank you."
	end
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


def profile_params
	params.require(:user_settings).permit(:portrait_feature,:about_feature,:email_subscription_feature,
		:social_icons_features,:contact_feature, :about_title, :about_content, :post_one,:post_two,:post_three,:post_four,:post_five,:post_six,:post_seven,:post_eight,:post_nine)
end

end
