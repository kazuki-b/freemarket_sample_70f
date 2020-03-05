Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :users
  resources :produts, only: [:index, :show]
end