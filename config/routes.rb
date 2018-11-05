Rails.application.routes.draw do
  
  root 'meals#index'
  get 'meals/usermeals', to: 'meals#usermeals'
  get 'meals/searchmeals', to:'meals#searchmeals', as:'searchmeals'
  get 'meals/searchbylocation', to:'meals#searchbylocation', as:'bylocation'
  post 'meals/:id', to: 'orders#create'
  devise_for :users
  resources :meals
  resources :charges
  get 'meals/:id/orders', to: 'orders#new', as: 'new_order'
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
