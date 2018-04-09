Rails.application.routes.draw do

  # root
  root 'pages#get_page'

  # peoples
  get 'get_your_page', to: 'pages#get_page', as: 'get_page'

  get 'johannes_seikowsky', to: 'pages#johannes', as: 'johannes'

  get 'valerie_vaughn', to: 'pages#valerie_vaughn', as: 'valerie_vaughn'
  get 'vaughn_dashboard', to: 'pages#vaughn_dashboard', as: 'vaughn_dashboard'

  get 'dave_garbutt', to: 'pages#dave_garbutt', as: 'dave_garbutt'
  get 'garbutt_dashboard', to: 'pages#garbutt_dashboard', as: 'garbutt_dashboard'

  get 'james_finn', to: 'pages#james_finn', as: 'james_finn'
  get 'finn_dashboard', to: 'pages#finn_dashboard', as: 'finn_dashboard'

  post 'editing_vaughn_page', to: 'johannes_page#editing_vaughn_page', as: 'editing_vaughn_page'
  post 'editing_garbutt_page', to: 'johannes_page#editing_garbutt_page', as: 'editing_garbutt_page'
  post 'editing_finn_page', to: 'johannes_page#editing_finn_page', as: 'editing_finn_page'

  get 'thanks', to: 'pages#thank_you', as: 'thank_you'
  
  resources :writers


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
  get 'quick_start', to: 'users#quick_start', as: 'quick_start'
  get 'quick_intro', to: 'users#quick_intro', as: 'quick_intro'

  # user account page (marcis version - work in progress)
  get 'account/:id', to: 'users#account', as: 'account'

  # create a contact
  post 'create_contact', to: 'contacts#create', as: 'create_contact'

  # create many contacts
  post 'create_many_contacts', to: 'contacts#create_many', as: 'create_many_contacts'
  post 'create_contacts_onboarding', to: 'contacts#create_many_onboarding', as: 'create_contacts_onboarding'

  # update a contact (this_month or interval)
  patch 'update_contact/:id', to: 'contacts#update', as: 'update_contact'

  # updating last contacted
  post 'update_last_contacted/:contact_id', to: 'contacts#update_last_contacted', as: 'update_last_contacted'

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


  # pgae_builder_related
  post 'email_sub', to: 'johannes_page#email_subscriber', as: 'email_subscriber'
  post 'get_page', to: 'johannes_page#new_page_user', as: 'new_page_user'
end
