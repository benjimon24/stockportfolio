Rails.application.routes.draw do
  root 'portfolio#show'
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]
end
