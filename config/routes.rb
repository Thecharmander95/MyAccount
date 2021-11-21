Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Resources
  resources :users
  resources :sitedisables

  # Get paths
  get :data, 'accounts/data'
  get :personalinfo, 'accounts/personal'
  get :admin, 'admins/index'
  get :disabled, 'homes/disabled'

  # About gets
  get :about, 'abouts/index'
  get :credit, 'abouts/credit'
  get :lionsocial, 'abouts/lionsocial'
  get :moviemakers, 'abouts/moviemakers'
  get :railsforums, 'abouts/railsforums'

  # Learn More gets
  get :morelionsocial, 'learns/lionsocial'
  get :moremoviemakers, 'learns/moviemakers'
  get :morerailsforums, 'learns/railsforums'

end
