Rails.application.routes.draw do
  get 'instance/create'

  devise_for :users
end
