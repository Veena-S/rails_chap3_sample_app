Rails.application.routes.draw do
  root 'static_pages#home'
  # It’s possible to use a named route other than the default using the as: option.
  # get '/help',  to: 'static_pages#help', as: 'helf'
  get '/help',  to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # to get the routing for users resources.
  # Provides all the actions needed for a restful user resource
  resources :users
end
