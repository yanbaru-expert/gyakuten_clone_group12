Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :aws
  devise_for :users

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'movies#index'
  resources :questions do
    resources :solutions, only: [:create]
  end
  
end

