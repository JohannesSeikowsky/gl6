Rails.application.routes.draw do
  root 'pages#home'

  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'

  delete '/logout', to: 'sessions#delete', as: 'logout'
end
