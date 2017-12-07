Rails.application.routes.draw do

  root 'pages#home'

  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'

  delete '/logout', to: 'sessions#delete', as: 'logout'

  get 'user_account/:id', to: 'users#account', as: 'user_account'

  post 'create_contact', to: 'contacts#create', as: 'create_contact'

end
