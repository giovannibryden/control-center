Rails.application.routes.draw do
  get 'projects/show'

  get 'static/home'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'static#home'
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
end
