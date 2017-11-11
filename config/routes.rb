Rails.application.routes.draw do
  resources :op_code_links
  resources :cpt_codes
  resources :states
  resources :operations
  resources :patients
  resources :surgeons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
