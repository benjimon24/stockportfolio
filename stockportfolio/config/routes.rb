Rails.application.routes.draw do
  get '/', to: 'users#index'
  get 'stocks/search/:name', to: 'stocks#search'
  get 'stocks/:symbol', to: 'stocks#show'
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]
  get '/session/login', to: 'session#login', as: 'login'
  post '/session/login', to: 'session#create'
  get '/session/logout', to: 'session#logout', as: 'logout'
end
