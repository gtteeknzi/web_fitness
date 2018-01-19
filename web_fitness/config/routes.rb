Rails.application.routes.draw do

  resources :top
  devise_for :users, :controllers => {
    :users => "signup"
  }
  root 'top#top'
  match '/signup',    to: 'top#signup',    via: 'get'
  match '/login',   to: 'top#login',   via: 'get'
  match '/link', to: 'top#link', via: 'get'

  get 'users/show' => 'users#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
