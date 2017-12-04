Rails.application.routes.draw do
  root 'pages#home'

  get '/auth/:provider/callback', to: 'sessions#create', as: 'create_session'
  
  # get '/auth/failure', to: 'oauth#failure', as: 'oauth_failure'  -- maybe later..
end
