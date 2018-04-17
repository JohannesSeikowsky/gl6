class PagesController < ApplicationController
  
  # authentication for backend page
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['admin_user'] && password == ENV['admin_pw']
    end 
  end
  before_action :authenticate, only: [:backend]

  def home
    if current_user
      redirect_to user_account_path(current_user)
    else
      render layout: false
    end
  end

  def backend
  	@users = User.all 
  	@user_count = @users.count
  	@reminders = Reminder.all
  end

  def about
  end

  def security_and_privacy
  end

  def product_tour
  end

  def do_now
  end

  def get_page
  end

  def thank_you
  end

  def johannes
  end
  
  def valerie_vaughn
    @vaughns_settings = VaughnUser.find(1)
  end

  def vaughn_dashboard
    @vaughns_settings = VaughnUser.find(1)
  end

  def dave_garbutt
    @authors_settings = VaughnUser.find(2)
  end

  def garbutt_dashboard
    @authors_settings = VaughnUser.find(2)
  end

  def james_finn
    @authors_settings = VaughnUser.find(3)
  end

  def finn_dashboard
    @authors_settings = VaughnUser.find(3)
  end

  def muriz_serifovic
    @authors_settings = VaughnUser.find(4)
  end

  def serifovic_dashboard
    @authors_settings = VaughnUser.find(4)
  end

  def oliver_chalk
    @authors_settings = VaughnUser.find(5)
  end

  def chalk_dashboard
    @authors_settings = VaughnUser.find(5)
  end

  def harry_ven
    @authors_settings = VaughnUser.find(6)
  end

  def ven_dashboard
    @authors_settings = VaughnUser.find(6)
  end

  def sylvia_clare
    @authors_settings = VaughnUser.find(7)
  end

  def clare_dashboard
    @authors_settings = VaughnUser.find(7)
  end

  def steve_tannuzzo
    @authors_settings = VaughnUser.find(8)
  end

  def tannuzzo_dashboard
    @authors_settings = VaughnUser.find(8)
  end

  def don_karp
    @authors_settings = VaughnUser.find(9)
  end

  def karp_dashboard
    @authors_settings = VaughnUser.find(9)
  end

  def smita_vyas_kumar
    @authors_settings = VaughnUser.find(10)
  end

  def vyas_kumar_dashboard
    @authors_settings = VaughnUser.find(10)
  end

  def terijo
    @authors_settings = VaughnUser.find(11)
  end

  def terijo_dashboard
    @authors_settings = VaughnUser.find(11)
  end

  def artemis_jones
    @authors_settings = VaughnUser.find(12)
  end

  def jones_dashboard
    @authors_settings = VaughnUser.find(12)
  end

  def daniel_teall
    @authors_settings = VaughnUser.find(13)
  end

  def teall_dashboard
    @authors_settings = VaughnUser.find(13)
  end

  def amy_chai
    @authors_settings = VaughnUser.find(14)
  end

  def chai_dashboard
    @authors_settings = VaughnUser.find(14)
  end
end