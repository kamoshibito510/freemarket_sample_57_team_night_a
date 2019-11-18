Rails.application.routes.draw do
  
  # devise_for :users
  root to: "products#index"
  get 'mypage', to: 'mypages#index'
  get 'index', to: 'users#index'
  get 'users', to: 'users#new'

  resource :products
  resource :users

end
