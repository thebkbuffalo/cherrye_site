Rails.application.routes.draw do


  resources :biographies, :path => "bio"
  resources :playwrights, :path => "playwright"
  resources :performances
  resources :videos
  resources :images
  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :blogs, :path => "blog"
  resource :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
