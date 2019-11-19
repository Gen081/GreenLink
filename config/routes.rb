Rails.application.routes.draw do
  devise_for :users
  root 'landing#show'
  resource :fpl_account, only: [:create, :destroy]
  resources :challenges, only: [:index]
  resources :tips, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
