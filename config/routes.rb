Rails.application.routes.draw do
  get 'product/find'

  get 'product/order'

  devise_for :users
  root to: 'home#index'

  get 'home/about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
