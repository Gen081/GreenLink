Rails.application.routes.draw do
  devise_for :users

  root 'landing#show'
  resource :dashboard, only: [:show]
  resource :fpl_account, only: [:create, :destroy] do
    resource :sync, only: [:create]
  end
  resources :fpl_accounts, only: [:index]
  resource :profile, only: [:create, :destroy]
  resources :challenges, only: [:index]
  resources :tips, only: [:index]
  resources :bills, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
