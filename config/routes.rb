Rails.application.routes.draw do
  resources :books
  devise_for :users
  root 'homes#top'
  resources :users,only: [:show,:index,:edit,:update]
  get 'home/about' => 'homes#about'
end