Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:edit, :create]

  # resources :orders, only: [:edit], as: 'cart'


  get '/cart/:id', to: 'orders#edit'
  resources :orders, only: [ :update ]
  get '/order_confirmation/:id', to: 'orders#show'


end
