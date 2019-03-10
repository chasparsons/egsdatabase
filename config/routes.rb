Rails.application.routes.draw do
<<<<<<< HEAD
  
  devise_for :users
  root to: 'surgeons#index'
  
  resources :cpts
=======
  resources :cpt_codes
  resources :opcodes
  resources :complications
>>>>>>> d7457d94249adc4805dbc5ca27b6304c398cb1ac
  resources :states
  resources :operations
  resources :patients
  resources :surgeons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
