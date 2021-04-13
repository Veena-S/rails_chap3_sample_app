Rails.application.routes.draw do
  root 'static_pages#home'
  # It’s possible to use a named route other than the default using the as: option.
  # get '/help',  to: 'static_pages#help', as: 'helf'
  get '/help',  to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
