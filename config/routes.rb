Rails.application.routes.draw do
  root "products#index"

  resources :products

  resources :manufacturers 

  resources :uploaded_reports
end
