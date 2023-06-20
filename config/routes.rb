Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/clowns", to: "clowns#index"
  get "/clowns/:id", to: "clowns#show"
  get "search", to: "search#search"
  resources :clowns
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
