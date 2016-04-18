Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  resources :rooms
  
  mount ActionCable.server => '/cable'
end
