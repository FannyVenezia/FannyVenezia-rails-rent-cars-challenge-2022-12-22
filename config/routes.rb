Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cars, only: %i[index show] do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :bookings, only: %i[index show]
  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end
end
