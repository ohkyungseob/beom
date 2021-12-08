Rails.application.routes.draw do
  get 'mains/index'
  devise_for :users
  resources :homepages
  resources :homes
  resources :comments
  resources :episodes
  resources :webtoons
	root 'episodes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
