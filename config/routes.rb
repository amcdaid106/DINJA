Rails.application.routes.draw do
  get 'payments/new'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "recipes#weekly"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes, only: [:show]
  resources :ingredients, only: [:index]

  resources :users, only: [:edit, :create, :update] do
      resources :recipes, only: [:index]
      resources :orders, only: [:index]
  end


  # resources :orders, only: [:edit], as: 'cart'


  get '/cart/:id', to: 'orders#edit', as: :edit_order
  resources :orders, only: [ :update, :show ] do
    member do
      patch :update_address
    end

    resources :payments, only: [:new, :create]
  end
  # get '/order_confirmation/:id', to: 'orders#show', as: :order
  resources :order_items, only: [ :destroy, :create]

end
