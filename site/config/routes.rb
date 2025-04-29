Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "landing#index"
  resources :posts
  
  get "/info", to: "info#show"

  # otp auth + session
  # resources :sessions

  post "/signin", to: "sessions#create", as: :signin
  get "/auth/code/:code", to: "sessions#exchange_code", as: :exchange_code

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


end
