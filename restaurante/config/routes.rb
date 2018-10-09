Rails.application.routes.draw do

  root 'bills#new'

  resources :ingredients
  resources :items
  resources :orders
  resources :bills

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
