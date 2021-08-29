Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users

  resources :users

  get :about, 'abouts/index'
  get :data, 'accounts/data'
  get :personalinfo, 'accounts/personal'

end
