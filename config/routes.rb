Rails.application.routes.draw do
  root to: 'customers#index'

  get '/customers', to: 'customers#index'
  get '/customer/:id', to: 'customers#show', as: 'customer'
end
