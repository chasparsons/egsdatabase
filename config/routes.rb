Rails.application.routes.draw do
  resources :cpt_codes
  resources :opcodes
  resources :complications
  resources :states
  resources :operations
  resources :patients
  resources :surgeons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
