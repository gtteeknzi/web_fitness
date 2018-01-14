Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :users, only: [:show]
  root 'top#top'
  match '/signup',    to: 'top#signup',    via: 'get'
  match '/log in',   to: 'top#log in',   via: 'get'
  match '/link', to: 'top#lonk', via: 'get'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
