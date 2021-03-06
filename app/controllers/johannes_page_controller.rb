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

def editing_tannuzzo_page
	VaughnUser.find(8).update(profile_params)
	GeneralMailer.user_edited_page("tannuzzo").deliver
	redirect_to steve_tannuzzo_path
end

def editing_karp_page
	VaughnUser.find(9).update(profile_params)
	GeneralMailer.user_edited_page("karp").deliver
	redirect_to don_karp_path
end

def editing_vyas_kumar_page
	VaughnUser.find(10).update(profile_params)
	GeneralMailer.user_edited_page("smita_vyas_kumar").deliver
	redirect_to smita_vyas_kumar_path
end

def editing_terijo_page
	VaughnUser.find(11).update(profile_params)
	GeneralMailer.user_edited_page("terijo").deliver
	redirect_to terijo_path
end

def editing_jones_page
	VaughnUser.find(12).update(profile_params)
	GeneralMailer.user_edited_page("artemis_jones").deliver
	redirect_to artemis_jones_path
end

def editing_teall_page
	VaughnUser.find(13).update(profile_params)
	GeneralMailer.user_edited_page("daniel_teall").deliver
	redirect_to daniel_teall_path
end

def editing_chai_page
	VaughnUser.find(14).update(profile_params)
	GeneralMailer.user_edited_page("amy_chai").deliver
	redirect_to amy_chai_path
end

def editing_leonard_page
	VaughnUser.find(15).update(profile_params)
	GeneralMailer.user_edited_page("kristin_leonard").deliver
	redirect_to kristin_leonard_path
end

def editing_spurrill_jones_page
	VaughnUser.find(16).update(profile_params)
	GeneralMailer.user_edited_page("esther_spurrill_jones").deliver
	redirect_to esther_spurrill_jones_path
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
	elsif @author_of_page == "sylvia_clare"
		redirect_to sylvia_clare_path, notice: "It worked! Thank you."
	elsif @author_of_page == "steve_tannuzzo"
		redirect_to steve_tannuzzo_path, notice: "It worked! Thank you."
	elsif @author_of_page == "don_karp"
		redirect_to don_karp_path, notice: "It worked! Thank you."
	elsif @author_of_page == "smita_vyas_kumar"
		redirect_to smita_vyas_kumar_path, notice: "It worked! Thank you."
	elsif @author_of_page == "terijo"
		redirect_to terijo_path, notice: "It worked! Thank you."
	elsif @author_of_page == "artemis_jones"
		redirect_to artemis_jones_path, notice: "It worked! Thank you."
	elsif @author_of_page == "daniel_teall"
		redirect_to daniel_teall_path, notice: "It worked! Thank you."
	elsif @author_of_page == "amy_chai"
		redirect_to amy_chai_path, notice: "It worked! Thank you."
	elsif @author_of_page == "kristin_leonard"
		redirect_to kristin_leonard_path, notice: "It worked! Thank you."
	elsif @author_of_page == "esther_spurrill_jones"
		redirect_to esther_spurrill_jones_path, notice: "It worked! Thank you."
	elsif @author_of_page == "johannes"
		redirect_to johannes_path, notice: "Thank you! It worked."
	else
		redirect_to root_path, notice: "Thank you! It worked."
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
	params.require(:user_settings).permit(:background_img, :picture, :bio_feature, :twitter_life_feed, :portrait_feature,:about_feature,:email_subscription_feature,
		:social_icons_features,:contact_feature, :bio_title, :bio_content, :about_title, :about_content, :post_one,:post_two,:post_three,:post_four,:post_five,:post_six,:post_seven,:post_eight,:post_nine)
end

end
