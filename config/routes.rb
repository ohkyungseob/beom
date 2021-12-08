Rails.application.routes.draw do
  resources :comment2s
  resources :buys
  get 'mains/index'
  devise_for :users
  resources :homepages
  resources :homes
  resources :comments
  resources :episodes
  resources :webtoons
	root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
