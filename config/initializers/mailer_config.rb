ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "wordgates.com",
  :user_name            => ENV['gmail_username'],
  :password             => ENV['gmail_password'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "wordgates.com" if Rails.env.production?
ActionMailer::Base.default_url_options[:host] = "http://localhost:3000/" if Rails.env.development?
