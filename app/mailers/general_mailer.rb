class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def signup_mail(user_first_name, user_email)
    @first_name = user_first_name
    @email = user_email
    mail(to: "joseikowsky@gmail.com", subject: 'test')
  end
end
