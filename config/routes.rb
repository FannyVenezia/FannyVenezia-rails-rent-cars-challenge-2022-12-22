Rails.application.routes.draw do
  get 'bookings/new'
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
end
