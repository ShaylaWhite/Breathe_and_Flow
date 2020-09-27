Rails.application.routes.draw do

  root "sessions#home"
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login'=> 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :users

  resources :types, only: [:new, :index, :create]
  resources :reviews
  
  resources :groups do
    resources :reviews, only: [:new, :index]
  end

end 