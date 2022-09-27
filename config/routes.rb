Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :department, only: [:index]
  resources :employee, only: [:show]
  resources :ticket, only: [:update]
end
