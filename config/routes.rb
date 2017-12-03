Rails.application.routes.draw do
  root 'pages#home'

  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'
  
  get '/auth/failure', to: 'pages#home', as: 'home'
end
