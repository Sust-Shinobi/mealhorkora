Rails.application.routes.draw do
  root 'static_pages#home'
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
  resources :users
  resources :preferrences, only: [:create, :destroy]
end
