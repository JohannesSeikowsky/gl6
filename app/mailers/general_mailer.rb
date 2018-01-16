class GeneralMailer < ApplicationMailer
  default from: "reminder@mindyournetwork.com"

  def signup_mail()
    #@user = user
    mail(to: "joseikowsky@gmail.com", subject: 'Test')
  end
end
