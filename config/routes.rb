Rails.application.routes.draw do
  resources :posts
  devise_for :users
  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "toggle_like", to: "likes#toggle_like", as: :toggle_like
  resources :users, only: [:show]
  resources :comments, only: %i[create destroy]
end
