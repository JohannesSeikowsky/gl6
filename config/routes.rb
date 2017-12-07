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

  # logout
  delete '/logout', to: 'sessions#delete', as: 'logout'

end
