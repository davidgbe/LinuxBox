Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  resouces :instances do 
    collection do
      post 'validate_vm'
      get 'available'
    end 
  end

  resources :apps do
    collection do
      get 'start'
    end
  end

  devise_for :users
end
