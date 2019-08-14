Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # a user can see all restaurants
  get "restaurants", to: "restaurants#index"
  # a user can add a new restaurant and must return show
  get "restaurants/new", to: "restaurants#new"
  # a user can show a restaurant
  get "restaurants/:id", to: "restaurants#show", as: :show

  post "restaurants", to: "restaurants#create"
end
