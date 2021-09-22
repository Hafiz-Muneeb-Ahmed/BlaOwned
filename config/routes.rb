Rails.application.routes.draw do
  # Get  /About
  get "About" ,to:"about#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
