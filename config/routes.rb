Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  resources :instances do
    collection do
      post 'validate_vm'
      get 'available'
    end 
  end

  resources :apps do
    member do
      get 'start'
    end
  end

  devise_for :users
end
