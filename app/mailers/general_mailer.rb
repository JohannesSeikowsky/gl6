class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def welcome_email(users_first_name, users_email)
    @first_name = users_first_name
    @email = users_email
    mail(to: @email, subject: 'Thanks for signing up!')
  end

  def notify_admin
    mail(to: "joseikowsky@gmail.com", subject: 'New Reminder set at MYN...')
  end
end
