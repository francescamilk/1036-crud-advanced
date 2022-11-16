Rails.application.routes.draw do
  # # Read all
  # get "restaurants", to: "restaurants#index"
  # # Create
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # # Read one
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # Update
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # # Delete
  # delete "restaurants/:id", to: "restaurants#destroy"

  # GET /restaurants/top
  # get '/restaurants/top', to: 'restaurants#top'
  resources :restaurants do

    # non-parametric custom URL
    collection do
      get :top
    end

    # get '/restaurants/:id/chef', to: 'restaurants#chef'
    # parametric custom URL
    member do
      get :chef
    end
  end
end
