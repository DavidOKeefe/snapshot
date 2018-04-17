Rails.application.routes.draw do
  root to: "accounts#index"

  resources :accounts
  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :import_entries, only: [:new, :create]
end
