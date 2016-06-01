Rails.application.routes.draw do

  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'users/index'
  get 'users/show'
  get 'home/show'
  
  devise_scope :user do
    root :to => 'home#index'
  end
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"},
    controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :replies
  resources :bas
  resources :notices
  resources :answers
  resources :questions
  resources :evas
  resources :comments
  resources :brokers
  resources :users, :only => [:index, :show]
  resources :boards
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end
end
