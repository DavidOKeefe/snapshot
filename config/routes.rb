Rails.application.routes.draw do
  root to: "accounts#index"

  resources :accounts
  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy]
  resource :import_entry, only: [:create]
end
