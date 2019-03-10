Rails.application.routes.draw do
  
  devise_for :users
  root to: 'surgeons#index'
  
  resources :cpts
  resources :complications
  resources :states
  resources :operations
  resources :patients
  resources :surgeons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
