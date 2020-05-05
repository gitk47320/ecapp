Rails.application.routes.draw do
  root 'top#index'
  resources :products
  resources :orders
  devise_for :users, controllers: {
    session: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
