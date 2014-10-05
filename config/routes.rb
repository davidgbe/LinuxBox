Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  resources :apps do
    member do
      get 'start'
    end
  end

  devise_for :users
end
