Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root 'top#top'
  match '/アカウント作成',    to: 'top#アカウント作成',    via: 'get'
  match '/ログイン',   to: 'top#ログイン',   via: 'get'
  match '/リンク', to: 'top#リンク', via: 'get'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
