Rails.application.routes.draw do
  get '/aws',to:'aws#index'
  get '/aws/:id',to:'aws#show'
  devise_for :users

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'movies#index'
end
