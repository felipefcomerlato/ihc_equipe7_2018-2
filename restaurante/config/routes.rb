Rails.application.routes.draw do

  resources :categories
  root 'bills#new'

  resources :ingredients
  resources :items
  resources :orders
  resources :bills

  get '/menu', to: "items#menu"
  match 'order_item', to: 'items#order_item', via: [:get, :post]
  post 'add_order', to: 'orders#add_order'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
