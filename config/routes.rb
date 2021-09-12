Rails.application.routes.draw do
  get 'wishlists/update'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "admin", to: "pages#admin"
  resources :products
  resources :wishlists
end
