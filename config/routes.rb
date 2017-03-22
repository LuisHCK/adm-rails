Rails.application.routes.draw do
  resources :organizations
  resources :sales
  resources :stocks
  resources :products
  resources :providers
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
