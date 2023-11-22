Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get "about-us", to: "about#index", as: :about
  # we can use standart way also: get "about", to: "about#index" but this one shows url about-us and render about
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  root to: "main#index" 
  #better to use root for mainpage but can use get "/" or get""
  
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
end

 