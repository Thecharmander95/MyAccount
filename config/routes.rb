Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users

  resources :users
  resources :sitedisables

  get :about, 'abouts/index'

  get :data, 'accounts/data'
  get :personalinfo, 'accounts/personal'
  get :lionsocail, "accounts/lionsocail"
  get :moviemakers, "accounts/moviemakers"
  get :railsforums, "accounts/railsforums"
  get :admin, 'admins/index'
  get :disabled, 'homes/disabled'
end
