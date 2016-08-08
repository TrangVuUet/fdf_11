Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  # resources :users, only: :index
  #,controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations",
  #   confirmations_: "users/confirmations",
  #   passwords: "users/passwords",
  #   unlocks: "users/unlocks",
  # }
end
