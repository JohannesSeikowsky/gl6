Rails.application.routes.draw do

  # home
  root 'pages#home'

  # signup/login
  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'

  # user account page
  get 'user_account/:id', to: 'users#account', as: 'user_account'

  # create a contact
  post 'create_contact', to: 'contacts#create', as: 'create_contact'

  # create many contacts
  post 'create_many_contacts', to: 'contacts#create_many', as: 'create_many_contacts'

  # update a contact (this_month or interval)
  patch 'update_contact/:id', to: 'contacts#update', as: 'update_contact'

  # delete a contact
  delete 'delete_contact/:id', to: 'contacts#delete', as: 'delete_contact'

  # new reminder
  get 'new_reminder/:content', to: 'reminders#new', as: 'new_reminder'

  # create reminder
  post 'create_reminder', to: 'reminders#create', as: 'create_reminder'

  # all reminders
  get 'all', to: 'reminders#all', as: 'all_reminders'

  # logout
  delete '/logout', to: 'sessions#delete', as: 'logout'

end
