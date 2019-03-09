Rails.application.routes.draw do

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
