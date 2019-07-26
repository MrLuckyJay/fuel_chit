Rails.application.routes.draw do
  resources :fuel_types
  resources :users

  get "/signup", to: "users#new"
  root "sessions#new"
  post "/login", to:"sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
