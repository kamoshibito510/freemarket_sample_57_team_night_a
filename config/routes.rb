Rails.application.routes.draw do
  get 'card/new'
  get 'card/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  
  get 'mypage', to: 'mypages#index'

  get 'index', to: 'users#index'
  resource :products
  resource :users
  get 'users', to: 'users#login-new'

end
