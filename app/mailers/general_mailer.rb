class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def signup_mail(users_first_name, users_email)
    @first_name = users_first_name
    @email = users_email
    mail(to: @email, subject: 'Thank you!')
  end
end
