Rails.application.routes.draw do
  
  namespace :dashboard do
    resources :posts
  end
  
  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
