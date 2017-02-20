Rails.application.routes.draw do
  root 'portfolios#show'
  get 'stocks/search/:symbol', to: 'stocks#search'
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]


end
