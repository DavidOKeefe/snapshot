Rails.application.routes.draw do
  root to: "accounts#index"

  resources :accounts
  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection { post :import }
  end

end
