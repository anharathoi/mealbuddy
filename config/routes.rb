Rails.application.routes.draw do
  
  root 'meals#index'
  get 'meals/usermeals', to: 'meals#usermeals'

  devise_for :users

  
  resources :meals
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
