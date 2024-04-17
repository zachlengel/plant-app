Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  post "/users" => "users#create" #create user

  post "/sessions" => "sessions#create" #log in with password

  get "/plants" => "plants#index" #View all plants
  get "/plants/:id" => "plants#show"  #View selected plant

  post "/schedules" => "schedules#create" #Add plant to schedule
  get "/schedules" => "schedules#index"    #View plant schedules
end
