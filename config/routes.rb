Rails.application.routes.draw do
  root "products#index"

  resources :products, only: [:index, :show]

  resources :manufacturers
end
