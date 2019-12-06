Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  
  get 'mypage', to: 'mypages#index'
  get 'users', to: 'users#new'
  get 'step1', to: 'users#step1'
  get 'step2', to: 'users#step2'
  get 'step3', to: 'users#step3'

end
