Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # root 'topics#index'
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
end
