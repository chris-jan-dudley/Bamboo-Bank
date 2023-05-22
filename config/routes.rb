Rails.application.routes.draw do
  root to: 'bank#index'
  resources :transactions
  resources :users

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'register', to: 'users#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
