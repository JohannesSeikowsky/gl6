class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def signup_mail(user)
    @user = user
    mail(to: "joseikowsky@gmail.com", subject: 'Test')
  end
end
