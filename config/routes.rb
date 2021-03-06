Rails.application.routes.draw do
  # Get  /About
  get "about" ,to:"about#index"

  get "sign_up",to: "registrations#new"
  post "sign_up",to: "registrations#create"

  get "sign_in",to: "session#new"
  post "sign_in",to: "session#create"

  delete "logout",to: "session#destroy"
  root to: "main#index"

  get 'test' => 'session#test'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end