Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root to: "main#index" 
  #better to use root for mainpage but can use get "/" or get""
  
  get "about-us", to: "about#index", as: :about
  # we can use standart way also: get "about", to: "about#index" but this one shows url about-us and render about
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
end

