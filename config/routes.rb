Rails.application.routes.draw do
  root 'static_pages#home'
  get '/status', to:"static_pages#status"
  post '/status', to:"status#update"
  get '/preference', to: "static_pages#preference"
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  get '/signin', to: "sessions#new"
  post 'signin', to: "sessions#create"
  delete '/signout', to: "sessions#destroy"
  get '/dashboard', to: "static_pages#dashboard"
  get '/lunch_manager', to: "lunch_managers#new"
  post '/lunch_manager', to: "lunch_managers#create"
  get '/dinner_manager', to: "dinner_managers#new"
  post '/dinner_manager', to: "dinner_managers#create"
  get '/manager_panel', to: "managers#new"
  get '/reports', to: "meal_account_factory#new"
  post '/reports', to: "meal_account_factory#create"
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/preference',  to: 'static_pages#preference'
  post '/newadmin', to: 'managers#create_admin'
  post '/manager_panel', to: 'managers#remove_admin'

  get  '/create_new_lunch_menu',   to: 'lunch_managers#new_meal'
  post '/create_new_lunch_menu' ,  to: 'lunch_managers#create_meal'
  get  '/create_new_dinner_menu', to: 'dinner_managers#new_meal'
  post '/create_new_dinner_menu', to: 'dinner_managers#create_meal'
  resources :users
  resources :preferrences, only: [:create, :destroy]
end
