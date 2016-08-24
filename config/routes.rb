Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "recipes#weekly"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes, only: [:show]

  resources :users, only: [:edit, :create, :update]

  # resources :orders, only: [:edit], as: 'cart'


  get '/cart/:id', to: 'orders#edit', as: :edit_order
  resources :orders, only: [ :update, :show ]
  # get '/order_confirmation/:id', to: 'orders#show', as: :order
  resources :order_items, only: [ :destroy ]
end
