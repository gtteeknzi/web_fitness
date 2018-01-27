Rails.application.routes.draw do

  root 'top#top'

  get  '/signup'        => 'users#new'
  post '/signup'        => 'users#create'
  get  'users/:id/index'=> 'users#index'

  get    '/signin'      => 'sessions#new'
  post   '/signin'      => 'sessions#created'
  delete '/signout'     => 'sessions#destroy'

  # get  '/signin' =>'users#signin_form'
  # get '/signin' =>'users#signin'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
