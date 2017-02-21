Rails.application.routes.draw do
  resources :users, except: [:index, :destroy]
  resources :portfolios
  resources :stocks, except: [:index]

  get '/', to: 'session#login'

  get '/search/:name', to: 'stocks#search'
  # get '/stocks/:id', to: 'stocks#show'

  get '/session/login', to: 'session#login', as: 'login'
  post '/session/login', to: 'session#create'

  get '/session/logout', to: 'session#logout', as: 'logout'
end
