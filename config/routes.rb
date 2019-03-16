Rails.application.routes.draw do
  
  resources :complications
  resources :patients
  resources :cpt_operations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'surgeons#index'
  
  resources :cpts
  resources :states
  resources :operations
  resources :surgeons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
