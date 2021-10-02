Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"

  get 'basket', to: "basket#show"
  get "about", to: "pages#about"
  get "policy", to: "pages#policy"
  get "account", to: "pages#account"
  get 'wishlists/update'

  resources :products, only: [:index, :show]
  resources :wishlists
  resources :basket_items
  resource :baskets, only: [:show]
end
