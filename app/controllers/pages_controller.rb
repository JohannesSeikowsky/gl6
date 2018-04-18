class PagesController < ApplicationController
  
  # authentication for backend page
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['admin_user'] && password == ENV['admin_pw']
    end 
  end
  before_action :authenticate, only: [:backend]

  def home
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
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def tannuzzo_dashboard
    @authors_settings = VaughnUser.find(8)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def don_karp
    @authors_settings = VaughnUser.find(9)
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def karp_dashboard
    @authors_settings = VaughnUser.find(9)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def smita_vyas_kumar
    @authors_settings = VaughnUser.find(10)
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def vyas_kumar_dashboard
    @authors_settings = VaughnUser.find(10)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def terijo
    @authors_settings = VaughnUser.find(11)
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def terijo_dashboard
    @authors_settings = VaughnUser.find(11)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def artemis_jones
    @authors_settings = VaughnUser.find(12)
    @name = "Artemis J Jones"
    @image_of_author = "https://pbs.twimg.com/profile_images/959416572321419265/dPWeVZtD_400x400.jpg"
    @title1 = "The Meaning Of Lost"
    @title2 = "When Will The Adults Enter The Room?"
    @title3 = "Wild"
    @title4 = "The Death of Denny James Franklin"
    @title5 = "Michelle"
    @underscore_name = "artemis_jones"
    @medium_link = "https://medium.com/@Artemis_J_Jones"
    @twitter_link = "https://twitter.com/Artemis_J_Jones"
    @fb_link = ""
    @background_image = "https://pbs.twimg.com/profile_banners/2342042976/1518401055/1500x500"
  end

  def jones_dashboard
    @authors_settings = VaughnUser.find(12)
    @image_of_author = "https://pbs.twimg.com/profile_images/959416572321419265/dPWeVZtD_400x400.jpg"
    @title1 = "The Meaning Of Lost"
    @title2 = "When Will The Adults Enter The Room?"
    @title3 = "Wild"
    @title4 = "The Death of Denny James Franklin"
    @title5 = "Michelle"
    @background_image = "https://pbs.twimg.com/profile_banners/2342042976/1518401055/1500x500"
  end

  def daniel_teall
    @authors_settings = VaughnUser.find(13)
    @name = "Daniel Teall"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gey56sDzjH4rG-D4O-2luw.jpeg"
    @title1 = "Final Pagers"
    @title2 = "First Encounter"
    @title3 = "Goddess"
    @title4 = "Correct to Love"
    @title5 = "The Gentrification of Dreams"
    @underscore_name = "daniel_teall"
    @medium_link = "https://medium.com/@tealld20"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/daniel.teall.7"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*1iPeIYCdfApnHTRazycw0A.jpeg"
  end

  def teall_dashboard
    @authors_settings = VaughnUser.find(13)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gey56sDzjH4rG-D4O-2luw.jpeg"
    @title1 = "Final Pagers"
    @title2 = "First Encounter"
    @title3 = "Goddess"
    @title4 = "Correct to Love"
    @title5 = "The Gentrification of Dreams"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*1iPeIYCdfApnHTRazycw0A.jpeg"
  end

  def amy_chai
    @authors_settings = VaughnUser.find(14)
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def chai_dashboard
    @authors_settings = VaughnUser.find(14)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def kristin_leonard
    @authors_settings = VaughnUser.find(15)
    @name = "Smita Vyas Kumar"
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @underscore_name = "smita_vyas_kumar"
    @medium_link = "https://medium.com/@smitavyaskumar"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/SmitaVyas"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end

  def leonard_dashboard
    @authors_settings = VaughnUser.find(15)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/1*Gz_ZlYgkv0uG8Jz6IDmTiQ.jpeg"
    @title1 = "A Promise"
    @title2 = "The Freedom Pantoum"
    @title3 = "The Gift"
    @title4 = "Urban Rhapsody"
    @title5 = "I am water"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*SFFSCcANXGg0JAbH_zf10Q.png"
  end
end