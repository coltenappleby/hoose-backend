Rails.application.routes.draw do
  resources :housing_data
  resources :zip_codes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
