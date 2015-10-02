Rails.application.routes.draw do



  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resource :users, only: [:create, :new]

end
