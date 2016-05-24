Rails.application.routes.draw do

  resources :fruits
  resources :replies
  get 'fruits/index'
  get 'fruits/show'
  get 'fruits/new'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'users/index'
  get 'users/show'
  
  devise_scope :user do
    root :to => 'home#index'
  end
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"},
    controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :bas
  resources :notices
  resources :answers
  resources :questions
  resources :evas
  resources :comments
  resources :brokers
  resources :users, :only => [:index, :show]
  resources :boards
end
