Rails.application.routes.draw do

  get 'address/show'

  get 'address/add_address'

  get 'address/update'

  resources :products
  get 'products/search'
  devise_for :users
  root to: 'home#index'

  get 'home/about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
