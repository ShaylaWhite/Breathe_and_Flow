Rails.application.routes.draw do
  
  get '/signup' => ''



  resources :reviews
  resources :users
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
