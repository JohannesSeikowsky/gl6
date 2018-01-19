class GeneralMailer < ApplicationMailer
  default from: "joseikowsky@googlemail.com"

  def signup_mail()
    #@user = user
    mail(to: "joseikowsky@googlemail.com", subject: 'Test')
  end
end
