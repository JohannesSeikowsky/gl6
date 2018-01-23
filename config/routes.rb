Rails.application.routes.draw do

  # root
  root 'pages#home'

  # statics
  get 'about_us', to: 'pages#about', as: 'about'
  get 'pricing', to: 'pages#pricing', as: 'pricing'
  get 'security_and_privacy', to: 'pages#security_and_privacy', as: 'privacy'
  get 'product_tour', to: 'pages#product_tour', as: 'product_tour'
  get 'do_now', to: 'pages#do_now', as: 'do_now'

  # signup/login
  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'

  # user account page (for now)
  get 'user_account/:id', to: 'users#user_account', as: 'user_account'
  get 'quick_start/:id', to: 'users#onboarding', as: 'onboarding'

  # user account page (marcis version - work in progress)
  get 'account/:id', to: 'users#account', as: 'account'

  # create a contact
  post 'create_contact', to: 'contacts#create', as: 'create_contact'

  # create many contacts
  post 'create_many_contacts', to: 'contacts#create_many', as: 'create_many_contacts'

  # update a contact (this_month or interval)
  patch 'update_contact/:id', to: 'contacts#update', as: 'update_contact'

  # delete a contact
  delete 'delete_contact/:id', to: 'contacts#delete', as: 'delete_contact'

  # create or update profile
  post 'create_or_update_profile/:contact_id', to: 'profiles#create_or_update_profile', as: 'create_or_update_profile'

  # new reminder
  get 'set_reminder/:content', to: 'reminders#new', as: 'new_reminder'

  # create reminder
  post 'create_reminder', to: 'reminders#create', as: 'create_reminder'

  # backend
  get 'backend', to: 'pages#backend', as: 'backend'

  # logout
  delete '/logout', to: 'sessions#delete', as: 'logout'

end
