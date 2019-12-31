Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login',  to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'pages#index'
  get '/about-me', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :posts

  namespace :dashboard do
    resources :books
    resources :posts
    resources :users
  end

  scope module: 'api' do
    namespace :v1, defaults: { format: :json } do
      get '/reading', to: 'books#index'
    end
  end
end
