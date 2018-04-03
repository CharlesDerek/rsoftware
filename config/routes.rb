Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  get 'user/dashboard', to: 'user#dashboard'

  
  mount ActionCable.server => '/cable'
end
