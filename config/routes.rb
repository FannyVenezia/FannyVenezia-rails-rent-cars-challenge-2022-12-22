Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
  get "bookings", to: "bookings#index"
end
