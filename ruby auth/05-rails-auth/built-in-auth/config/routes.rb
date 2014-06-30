Rails.application.routes.draw do

  resources :users, only: [ :create, :new ]
  resources :sessions, only: [ :create ]

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  root to: 'home#index'

end
