Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
<<<<<<< HEAD
  get "/clowns", to: "clowns#index"
  get "/clowns/:id", to: "clowns#show"
  get "search", to: "search#search"
  resources :clowns
  get "search", to: "search#search"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
=======
      resources :clowns
  get "search", to: "search#search"

>>>>>>> 04829873d042ba0ec136a8085bc03c05eb2a9d68
