Rails.application.routes.draw do

  root 'users#new'

  resources :users, except: [:index]
  resources :places
  resources :ratings, only: [:create, :update, :destroy]

  # Sign up
  get 'signup' => 'users#new'

  # Log in
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # Log out
  delete 'logout' => 'sessions#destroy'

end
