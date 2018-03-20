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

  def johannes
  end

  def dave_garbutt
  end

  def james_finn
  end

  def valerie_vaughn
  end
end