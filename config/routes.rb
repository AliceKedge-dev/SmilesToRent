Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :clowns
  get "search", to: "search#search"
  get "clowns/:id/edit", to: "clowns#edit"
  patch "clowns/:id", to: "clowns#update"
end
