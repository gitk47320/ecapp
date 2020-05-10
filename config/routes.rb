Rails.application.routes.draw do
  resources :addresses, only: [:edit, :show, :update, :new, :create]
  resources :mypages, only: :index
  resources :orders
  resources :purchases
  resources :purchase_histories
  resources :mypages
  get 'orders_finishes/show'
  root 'top#index'
  resources :products
  devise_for :users, controllers: {
    session: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
