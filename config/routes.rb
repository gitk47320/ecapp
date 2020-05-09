Rails.application.routes.draw do
  resources :orders
  resources :purchases
  get 'orders_finishes/show'
  root 'top#index'
  resources :products
  devise_for :users, controllers: {
    session: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
