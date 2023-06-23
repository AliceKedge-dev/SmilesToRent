Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :clowns do
    resources :bookings
  end
  get "search", to: "search#search"
  get "clowns/:id/edit", to: "clowns#edit"
  patch "clowns/:id", to: "clowns#update"
  get "profile", to: "pages#profile"
end
