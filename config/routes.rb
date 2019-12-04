Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  get 'home/index'
  #root to: "home#index"
  resources :orders
  resources :rates
  resources :vendors do
    resources :rates
    resources :orders
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end