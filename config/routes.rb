Rails.application.routes.draw do
  devise_for :users
  resources :user
  resources :post
end
