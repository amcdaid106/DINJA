Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#weekly"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes, only: [:show]

  resources :users, only: [:edit, :create, :update]

  # resources :orders, only: [:edit], as: 'cart'


  get '/cart/:id', to: 'orders#edit'
  resources :orders, only: [ :update ]
  get '/order_confirmation/:id', to: 'orders#show'



end
