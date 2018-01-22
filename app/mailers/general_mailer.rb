class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def signup_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Test')
  end
end
