Rails.application.routes.draw do
  get '/users/new', to: "users#new"
  get '/sessions/login', to: "sessions#login"
end
