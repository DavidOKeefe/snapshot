Rails.application.routes.draw do
  root to: "accounts#index"

  resources :accounts
  resources :transactions
  resources :import_entries, only: [:new, :create]
end
