Rails.application.routes.draw do
  get 'payments/new'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "recipes#weekly"

  resources :recipes, only: [:show]
  resources :ingredients, only: [:index]

  resources :users, only: [:edit, :create, :update] do
      resources :recipes, only: [:index]
      resources :orders, only: [:index]
  end


  get '/cart/:id', to: 'orders#edit', as: :edit_order
  resources :orders, only: [ :update, :show ] do
    member do
      patch :update_address
    end

    resources :payments, only: [:new, :create]
  end

  resources :order_items, only: [ :destroy, :create] do
    member do
      put :add_one
      put :remove_one
    end
  end

end
