Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :clowns do
    resources :bookings
  end
  get "search", to: "search#search"
  get "profile", to: "pages#profile"
end
