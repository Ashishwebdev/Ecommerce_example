Rails.application.routes.draw do

  devise_for :users , path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :categories
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root 'products#index'

end
