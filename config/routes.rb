Rails.application.routes.draw do
  get 'wishlists/update'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "admin", to: "pages#admin"
  get "about", to: "pages#about"
  get "policy", to: "pages#policy"
  resources :products
  resources :wishlists
end
