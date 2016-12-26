Rails.application.routes.draw do
  resources :companies
  resources :lessons
  resources :people
  resources :labs
  resources :colleges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
