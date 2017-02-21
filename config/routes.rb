Rails.application.routes.draw do
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]

  get '/', to: 'session#login'

  get '/search/:name', to: 'stocks#search'

  # stock routes
  post '/buy', to: 'stocks#create'
  put '/sell', to: 'stocks#update'

  get '/session/login', to: 'session#login', as: 'login'
  post '/session/login', to: 'session#create'
  get '/session/logout', to: 'session#logout', as: 'logout'
end
