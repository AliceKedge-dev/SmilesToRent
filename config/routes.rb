Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :clowns
  get "search", to: "search#search"
  get "profile", to: "pages#profile"
end
