Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'home/index'
  root 'home#index'
  get 'list', to: 'home#list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
