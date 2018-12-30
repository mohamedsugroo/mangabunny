Rails.application.routes.draw do
  devise_for :users
  get 'current_user_status', to: 'current#index'
  resources :comments
  resources :videos
  resources :pages
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
