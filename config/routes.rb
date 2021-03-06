Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  get 'me/show'

  resources :line_items
  resources :orders
  resources :provinces
  resources :addresses

  get 'about/show'

  get 'categories/index'

  resources :carts, only: [:show] do
    member do
      post :add
    end
  end

  get 'address/show'

  get 'address/add_address'

  get 'address/update'

  resources :products
  resources :categories

  get 'products/search'
  devise_for :users
  root to: 'home#index'

  get 'home/about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
