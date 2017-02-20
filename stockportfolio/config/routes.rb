Rails.application.routes.draw do
  get '/users/new', to: "users#new"
  get '/sessions/login', to: "sessions#login"
  root 'portfolio#show'
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]
end
