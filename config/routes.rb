Rails.application.routes.draw do
  
  devise_for :users
  resources :problems do
    resources :solutions
  end
  authenticated do
    root to: 'problems#index', as: :authenticated_root
  end
  root to: 'home#index'

end
