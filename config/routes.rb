Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :users, only: [:show]
  root 'top#top'
  match '/signup',    to: 'users#signup',   via: 'get'
  match '/signin',    to: 'top#signin',   via: 'get'
  match '/link',      to: 'top#link',     via: 'get'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
