Rails.application.routes.draw do
  # ***** get 'users/show' を削除 *****
  root to: 'items#index'
  devise_for :users
  resources :items
  # ***** 次のルーティングを追加 *****
  resource :users, only: :show
end