Rails.application.routes.draw do
  root "products#index"

  resources :admin, only: :index

  resources :products do
    resources :bids, only: [:index, :new, :create, :update]
  end
end
