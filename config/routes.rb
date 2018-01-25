Rails.application.routes.draw do

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#created'
  # get  '/signin' =>'users#signin_form'
  # get '/signin' =>'users#signin'

  get '/signup' =>'users#new'
  post 'users/create' =>'users#create'

  get 'users/:id/index'=>'users#index'


  #devise_for :users
  root 'top#top'
  match 'users/signup',    to: 'users#signup',   via: 'get'
  #match 'users/signin_form',    to: 'users#signin',   via: 'get'
  match '/link',           to: 'top#link',       via: 'get'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
