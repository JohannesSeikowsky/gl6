class GeneralMailer < ApplicationMailer
  default from: "mindyournetwork@gmail.com"

  def welcome_email(users_first_name, users_email)
    @first_name = users_first_name
    @email = users_email
    mail(to: @email, subject: 'Thanks for signing up!')
  end

  def new_reminder_notifier
    mail(to: "joseikowsky@gmail.com", subject: 'New Reminder at MYN')
  end

  def new_user_notifier
    mail(to: "joseikowsky@gmail.com", subject: 'New User at MYN')  	
  end

  # Wordgates
  def new_email_subscriber(subscribers_email, author_of_page)
    @subscribers_email = subscribers_email
    @author_of_page = author_of_page
    mail(to: "joseikowsky@gmail.com", subject: 'New Email Subscriber')   
  end

  def new_page_user(users_medium, users_email)
    @users_medium = users_medium
    @users_email = users_email
    mail(to: "joseikowsky@gmail.com", subject: 'New Page User')   
  end

  def user_edited_page(user_name)
    @user_name = user_name    
    mail(to: "joseikowsky@gmail.com", subject: 'A user has edited page...')   
  end
end
