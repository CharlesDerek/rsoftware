Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  get 'userdashboard/dashboard', to: 'userdashboard#dashboard'

  
  mount ActionCable.server => '/cable'
end
