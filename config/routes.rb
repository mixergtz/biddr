Rails.application.routes.draw do
  root "pages#index"

  resources :products do
    resources :bids, only: [:index, :new, :create]
  end
end
