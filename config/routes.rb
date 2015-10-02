Rails.application.routes.draw do


  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resource :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
