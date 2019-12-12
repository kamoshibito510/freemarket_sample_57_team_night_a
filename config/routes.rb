Rails.application.routes.draw do
  

  root to: 'users#index'
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  
  resources :card, only:[:new,:show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end




  
  # get 'card', to: 'card#new'
  # root to: "products#index"
  # get 'mypage', to: 'mypages#index'
  # get 'profile', to: 'mypages#edit' #仮ルーティング、プロフィール編集画面
  # get 'identification', to: 'mypages#identification' #仮ルーティング、ユーザー本人確認画面
  # get 'users', to: 'users#new' #ユーザー新規会員登録
  # get 'users/sign_in', to: 'users#login-new' #仮ルーティング、ログイン画面用のビュー
  # get 'logout', to: 'users#logout' #仮ルーティング、ログアウト画面用のビュー
  # get 'buy', to: 'users#buy' #仮ルーティング、商品購入確認ページ
  # get 'card', to: 'users#card' #仮ルーティング、クレジットカード登録ページ
  # get 'sell', to: 'products#sell' #仮ルーティング、商品出品ページ
  # get 'detail', to: 'products#detail' #仮ルーティング、商品詳細ページ
  
  
  # resource :products
  # resource :users

end
