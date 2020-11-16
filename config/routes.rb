Rails.application.routes.draw do
  
  devise_for :users
  resources :problems do
    resources :solutions
  end
  authenticated do
    root to: 'home#search', as: :authenticated_root
  end
  root to: 'home#index'
  get '/payments/success', to: 'payments#success'
  post '/payments/webhooks', to: 'payments#webhooks'
end
