Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  devise_for :users
end
