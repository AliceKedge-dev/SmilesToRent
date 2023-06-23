Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/desroy'
  devise_for :users
  root to: "pages#home"
  resources :clowns do
    resources :bookings
  end
  get "search", to: "search#search"
  get "profile", to: "pages#profile"
end
