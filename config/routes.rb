Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  #get 'recipes/weekly'

  # get 'recipes' to: 'recipes#weekly'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
