Rails.application.routes.draw do



  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resource :users, only: [:create, :new]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
