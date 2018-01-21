Rails.application.routes.draw do
  get 'users/signin'
  get 'users/signup'


  devise_for :users
  resources :users, only: [:show]
  root 'top#top'
  match 'users/signup',    to: 'users#signup',   via: 'get'
  match 'users/signin',    to: 'users#signin',   via: 'get'
  match '/link',      to: 'top#link',     via: 'get'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
