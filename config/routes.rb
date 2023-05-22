Rails.application.routes.draw do
  root to: 'bank#index'
  resources :transactions
  resources :users

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  get 'register' => 'users#new'
  get 'account' => 'users#show'

  resource :session, only: [:new, :create, :destroy]
end
