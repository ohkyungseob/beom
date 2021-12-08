Rails.application.routes.draw do
  resources :buys
  get 'mains/index'
  devise_for :users
  resources :homepages
  resources :homes
  resources :comments
  resources :episodes
  resources :webtoons
	root 'buys#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
