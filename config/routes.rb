Rails.application.routes.draw do

  # root
  root 'pages#home'
  get 'get_started', to: 'pages#get_started', as: 'get_started'

  get 'get_page', to: 'pages#get_page', as: 'get_page'
  get 'get_your_page', to: 'pages#get_your_page', as: 'get_your_page'
  get 'done', to: 'pages#thank_you', as: 'thank_you'
  resources :writers

  get 'how_it_works', to: 'pages#how_it_works', as: 'how_it_works'
  get 'features', to: 'pages#features', as: 'features'
  get 'about_us', to: 'pages#about_us', as: 'about_us'
  get 'our_pricing', to: 'pages#our_pricing', as: 'our_pricing'

  post 'get_started', to: 'authors#create', as: 'create_author'

  get 'johannes', to: 'pages#johannes', as: 'johannes'


  # course
  get 'course', to: 'course#lesson_intro', as: 'lesson_intro'
  get 'lesson_one', to: 'course#lesson_one', as: 'lesson_one'
  get 'lesson_two', to: 'course#lesson_two', as: 'lesson_two'
  get 'lesson_three', to: 'course#lesson_three', as: 'lesson_three'
  get 'lesson_four', to: 'course#lesson_four', as: 'lesson_four'
  get 'lesson_five', to: 'course#lesson_five', as: 'lesson_five'
  get 'lesson_six', to: 'course#lesson_six', as: 'lesson_six'
  get 'lesson_seven', to: 'course#lesson_seven', as: 'lesson_seven'
  get 'lesson_eight', to: 'course#lesson_eight', as: 'lesson_eight'



  get 'valerie_vaughn', to: 'pages#valerie_vaughn', as: 'valerie_vaughn'
  get 'vaughn_dashboard', to: 'pages#vaughn_dashboard', as: 'vaughn_dashboard'
  post 'editing_vaughn_page', to: 'johannes_page#editing_vaughn_page', as: 'editing_vaughn_page'

  get 'dave_garbutt', to: 'pages#dave_garbutt', as: 'dave_garbutt'
  get 'garbutt_dashboard', to: 'pages#garbutt_dashboard', as: 'garbutt_dashboard'
  post 'editing_garbutt_page', to: 'johannes_page#editing_garbutt_page', as: 'editing_garbutt_page'

  get 'james_finn', to: 'pages#james_finn', as: 'james_finn'
  get 'finn_dashboard', to: 'pages#finn_dashboard', as: 'finn_dashboard'
  post 'editing_finn_page', to: 'johannes_page#editing_finn_page', as: 'editing_finn_page'

  get 'muriz_serifovic', to: 'pages#muriz_serifovic', as: 'muriz_serifovicn'
  get 'serifovic_dashboard', to: 'pages#serifovic_dashboard', as: 'serifovic_dashboard'
  post 'editing_serifovic_page', to: 'johannes_page#editing_serifovic_page', as: 'editing_serifovic_page'

  get 'oliver_chalk', to: 'pages#oliver_chalk', as: 'oliver_chalk'
  get 'chalk_dashboard', to: 'pages#chalk_dashboard', as: 'chalk_dashboard'
  post 'editing_chalk_page', to: 'johannes_page#editing_chalk_page', as: 'editing_chalk_page'

  get 'harry_ven', to: 'pages#harry_ven', as: 'harry_ven'
  get 'ven_dashboard', to: 'pages#ven_dashboard', as: 'ven_dashboard'
  post 'editing_ven_page', to: 'johannes_page#editing_ven_page', as: 'editing_ven_page'

  get 'sylvia_clare', to: 'pages#sylvia_clare', as: 'sylvia_clare'
  get 'clare_dashboard', to: 'pages#clare_dashboard', as: 'clare_dashboard'
  post 'editing_clare_page', to: 'johannes_page#editing_clare_page', as: 'editing_clare_page'

  get 'steve_tannuzzo', to: 'pages#steve_tannuzzo', as: 'steve_tannuzzo'
  get 'tannuzzo_dashboard', to: 'pages#tannuzzo_dashboard', as: 'tannuzzo_dashboard'
  post 'editing_tannuzzo_page', to: 'johannes_page#editing_tannuzzo_page', as: 'editing_tannuzzo_page'

  get 'don_karp', to: 'pages#don_karp', as: 'don_karp'
  get 'karp_dashboard', to: 'pages#karp_dashboard', as: 'karp_dashboard'
  post 'editing_karp_page', to: 'johannes_page#editing_karp_page', as: 'editing_karp_page'

  get 'smita_vyas_kumar', to: 'pages#smita_vyas_kumar', as: 'smita_vyas_kumar'
  get 'vyas_kumar_dashboard', to: 'pages#vyas_kumar_dashboard', as: 'vyas_kumar_dashboard'
  post 'editing_vyas_kumar_page', to: 'johannes_page#editing_vyas_kumar_page', as: 'editing_vyas_kumar_page'

  get 'terijo', to: 'pages#terijo', as: 'terijo'
  get 'terijo_dashboard', to: 'pages#terijo_dashboard', as: 'terijo_dashboard'
  post 'editing_terijo_page', to: 'johannes_page#editing_terijo_page', as: 'editing_terijo_page'

  get 'artemis_jones', to: 'pages#artemis_jones', as: 'artemis_jones'
  get 'jones_dashboard', to: 'pages#jones_dashboard', as: 'jones_dashboard'
  post 'editing_jones_page', to: 'johannes_page#editing_jones_page', as: 'editing_jones_page'

  get 'daniel_teall', to: 'pages#daniel_teall', as: 'daniel_teall'
  get 'teall_dashboard', to: 'pages#teall_dashboard', as: 'teall_dashboard'
  post 'editing_teall_page', to: 'johannes_page#editing_teall_page', as: 'editing_teall_page'

  get 'amy_chai', to: 'pages#amy_chai', as: 'amy_chai'
  get 'chai_dashboard', to: 'pages#chai_dashboard', as: 'chai_dashboard'
  post 'editing_chai_page', to: 'johannes_page#editing_chai_page', as: 'editing_chai_page'

  get 'kristin_leonard', to: 'pages#kristin_leonard', as: 'kristin_leonard'
  get 'leonard_dashboard', to: 'pages#leonard_dashboard', as: 'leonard_dashboard'
  post 'editing_leonard_page', to: 'johannes_page#editing_leonard_page', as: 'editing_leonard_page'

  get 'esther_spurrill_jones', to: 'pages#esther_spurrill_jones', as: 'esther_spurrill_jones'
  get 'spurrill_jones_dashboard', to: 'pages#spurrill_jones_dashboard', as: 'spurrill_jones_dashboard'
  post 'editing_spurrill_jones_page', to: 'johannes_page#editing_spurrill_jones_page', as: 'editing_spurrill_jones_page'
  

  # statics
  get 'about', to: 'pages#about', as: 'about'
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
