Rails.application.routes.draw do
  get 'instance/create'
  root 'info#index'

  resources :apps do
    collection do
      get 'start'
    end
  end

  devise_for :users
end
