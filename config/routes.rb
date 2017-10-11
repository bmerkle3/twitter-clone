Rails.application.routes.draw do
  get 'tweets/new'

  get 'tweets/index'

  get 'tweets/show'

  devise_for :users
  resources :user
  resources :post
end
