Rails.application.routes.draw do

  # SESSIONS
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login',  to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # PAGES
  get 'pages/index'
  root 'pages#index'

  # POSTS
  get 'posts/index'
  get 'posts/:id', to: 'posts#show'

  # DASHBOARD
  namespace :dashboard do
    resources :posts
    resources :users
  end
end
