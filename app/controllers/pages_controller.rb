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

  def get_started
    @author = Author.new
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
    @name = "Don Karp"
    @image_of_author = "https://pbs.twimg.com/profile_images/570662138885070848/h95_kpDr_400x400.jpeg"
    @title1 = "From Mental Patient to Healer: A Story of Overcoming Insanity"
    @title2 = "Letters From Mexico - Acapulco"
    @title3 = "Letters From Mexico: Beaches of Mexico"
    @title4 = "Letters From Mexico: Fiasco With Federales"
    @title5 = "Mexico’s Click and Clack Culture"
    @underscore_name = "don_karp"
    @medium_link = "https://medium.com/@donsbumpyroad"
    @twitter_link = "https://twitter.com/donkarp_author"
    @fb_link = "https://www.facebook.com/DonKarpauthor/"
    @background_image = "https://pbs.twimg.com/profile_banners/1149079512/1458272061/1500x500"
  end

  def karp_dashboard
    @authors_settings = VaughnUser.find(9)
    @name = "Don Karp"
    @image_of_author = "https://pbs.twimg.com/profile_images/570662138885070848/h95_kpDr_400x400.jpeg"
    @title1 = "From Mental Patient to Healer: A Story of Overcoming Insanity"
    @title2 = "Letters From Mexico - Acapulco"
    @title3 = "Letters From Mexico: Beaches of Mexico"
    @title4 = "Letters From Mexico: Fiasco With Federales"
    @title5 = "Mexico’s Click and Clack Culture"
    @underscore_name = "don_karp"
    @medium_link = "https://medium.com/@donsbumpyroad"
    @twitter_link = "https://twitter.com/donkarp_author"
    @fb_link = "https://www.facebook.com/don.karp.39"
    @background_image = "https://pbs.twimg.com/profile_banners/1149079512/1458272061/1500x500"
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
    @name = "Terijo"
    @image_of_author = "https://pbs.twimg.com/profile_images/852970399990206464/NHcL5v1A_400x400.jpg"
    @title1 = "Ocean Whispers"
    @title2 = "Blue Kisses"
    @title3 = "From the beginning"
    @title4 = "It’s A New Day"
    @title5 = "Light Tricks"
    @underscore_name = "terijo"
    @medium_link = "https://medium.com/@TeriJo"
    @twitter_link = "https://twitter.com/Darrieb"
    @fb_link = "https://www.facebook.com/teri.jo.3785"
    @background_image = "https://pbs.twimg.com/profile_banners/23210119/1482981865/1500x500"
  end

  def terijo_dashboard
    @authors_settings = VaughnUser.find(11)
    @image_of_author = "https://pbs.twimg.com/profile_images/852970399990206464/NHcL5v1A_400x400.jpg"
    @title1 = "Ocean Whispers"
    @title2 = "Blue Kisses"
    @title3 = "From the beginning"
    @title4 = "It’s A New Day"
    @title5 = "Light Tricks"
    @underscore_name = "terijo"
    @background_image = "https://pbs.twimg.com/profile_banners/23210119/1482981865/1500x500"
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
    @name = "Amy Chai"
    @ibmage_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/0*vfn6yXWqoQ16AVU6."
    @title1 = "Choose Your Own Adventure"
    @title2 = "The Prestidigitator"
    @title3 = "Lakes on Titan"
    @title4 = "The End of the Light"
    @title5 = "The Infinite Play of the Signifier"
    @underscore_name = "amy_chai"
    @medium_link = "https://medium.com/@amychai"
    @twitter_link = ""
    @fb_link = "https://www.facebook.com/amy.chai.90"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*2MQdZBTSh4ydKQz75AMjrg.jpeg"
  end

  def chai_dashboard
    @authors_settings = VaughnUser.find(14)
    @image_of_author = "https://cdn-images-1.medium.com/fit/c/100/100/0*vfn6yXWqoQ16AVU6."
    @title1 = "Choose Your Own Adventure"
    @title2 = "The Prestidigitator"
    @title3 = "Lakes on Titan"
    @title4 = "The End of the Light"
    @title5 = "The Infinite Play of the Signifier"
    @background_image = "https://cdn-images-1.medium.com/max/800/1*2MQdZBTSh4ydKQz75AMjrg.jpeg"
  end

  def kristin_leonard
    @authors_settings = VaughnUser.find(15)
    @name = "Kristin Leonard"
    @image_of_author = "https://miro.medium.com/fit/c/240/240/1*Y9QQ4IMipzdd1o35xsDgTQ.png"
    @title1 = "Words"
    @title2 = "The Wrong Direction."
    @title3 = "The Return"
    @title4 = "The Power"
    @title5 = "Through the Fire"
    @underscore_name = "kristin_leonard"
    @medium_link = "https://medium.com/@kristin.leonard"
    @twitter_link = "https://twitter.com/KrisJleonard"
    @fb_link = ""
    @background_image = "http://s3.otherpeoplespixels.com/sites/30468/assets/5OHQ_CDTOHDBFsQl.jpg"
  end

  def leonard_dashboard
    @authors_settings = VaughnUser.find(15)
    @name = "Kristin Leonard"
    @image_of_author = "https://pbs.twimg.com/profile_images/965027457039417345/UEqyQEsh_400x400.jpg"
    @title1 = "Words"
    @title2 = "The Wrong Direction."
    @title3 = "The Return"
    @title4 = "The Power"
    @title5 = "Through the Fire"
    @underscore_name = "kristin_leonard"
    @medium_link = "https://medium.com/@kristin.leonard"
    @twitter_link = "https://twitter.com/KrisJleonard"
    @fb_link = ""
    @background_image = "https://pbs.twimg.com/profile_banners/906569043477356544/1518915388/1500x500"
  end

  def esther_spurrill_jones
    @authors_settings = VaughnUser.find(16)
    @name = "Esther Spurrill-Jones"
    @image_of_author = "https://pbs.twimg.com/profile_images/885577520279506944/T9dDFA-H_400x400.jpg"
    @title1 = "Dear Christians, Things Need to Change"
    @title2 = "How to Write a Poem: Alliteration, Consonance, and Assonance"
    @title3 = "Cocoon"
    @title4 = "Original"
    @title5 = "Beside Me"
    @underscore_name = "esther_spurrill_jones"
    @medium_link = "https://medium.com/@estherspurrilljones"
    @twitter_link = "https://twitter.com/EstherSJones"
    @fb_link = "https://www.facebook.com/ALightThatBurns/"
    @background_image = "https://pbs.twimg.com/profile_banners/534515797/1501082047/1500x500"
  end

  def spurrill_jones_dashboard
    @authors_settings = VaughnUser.find(16)
    @name = "Esther Spurrill-Jones"
    @image_of_author = "https://pbs.twimg.com/profile_images/885577520279506944/T9dDFA-H_400x400.jpg"
    @title1 = "Dear Christians, Things Need to Change"
    @title2 = "How to Write a Poem: Alliteration, Consonance, and Assonance"
    @title3 = "Cocoon"
    @title4 = "Original"
    @title5 = "Beside Me"
    @underscore_name = "esther_spurrill_jones"
    @medium_link = "https://medium.com/@estherspurrilljones"
    @twitter_link = "https://twitter.com/EstherSJones"
    @fb_link = "https://www.facebook.com/ALightThatBurns/"
    @background_image = "https://pbs.twimg.com/profile_banners/534515797/1501082047/1500x500"
  end
end