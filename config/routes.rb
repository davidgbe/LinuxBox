Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  get 'app/start'

  devise_for :users
end
