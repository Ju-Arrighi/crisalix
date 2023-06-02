Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # root to: 'users#index'
  # Defines the root path route ("/")
  # root "articles#index"

  # Authenticated routes
  authenticated :user do
    # Define your authenticated routes here
    # For example:
    # resources :dashboard, only: [:index]
    # get '/profile', to: 'profiles#show'
    # ...
    resources :consultations, only: [:index, :create]
    # resources :users, only: [:index, :edit, :destroy]
  end

end
