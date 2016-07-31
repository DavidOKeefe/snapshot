Rails.application.routes.draw do
  root to: "accounts#index"

  resources :accounts
  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection { post :import }
  end

  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection { post :import }
  end

  resources :import_entry, only: [:create]
end
