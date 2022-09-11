Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Resources
  resources :users

  # Get paths
  get :data, 'accounts/data'
  get :personalinfo, 'accounts/personal'
  get :disabled, 'homes/disabled'

  # About paths
  get :about, 'abouts/index'
  get :credit, 'abouts/credit'
  get :lionsocial, 'abouts/lionsocial'
  get :moviemakers, 'abouts/moviemakers'
  get :railsforums, 'abouts/railsforums'
  get :lionfinance, 'abouts/lionfinance'

  # Learn More paths
  get :morelionsocial, 'learns/lionsocial'
  get :moremoviemakers, 'learns/moviemakers'
  get :morerailsforums, 'learns/railsforums'
  get :morelionfinance, 'learns/lionfinance'

  # Admin paths
  get :admin, 'admins/index'
  get :adminusers, 'admins/users'

end
