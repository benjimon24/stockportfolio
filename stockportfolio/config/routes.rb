Rails.application.routes.draw do
  root 'portfolios#index'
  get 'stocks/search/:name', to: 'stocks#search'
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, only: [:show]

  get '/session/login', to: 'session#login', as: 'login'
  post '/session/login'
  get '/session/logout', to: 'session#logout', as: 'logout'


end
