Rails.application.routes.draw do
  resources :restaurants do
    
    collection do
      # non-parametric custom URL
      # get '/restaurants/top', to: 'restaurants#top'
      get :top
    end

    member do
      # parametric custom URL
      # get '/restaurants/:id/chef', to: 'restaurants#chef'
      get :chef
    end

    # get '/restaurants/:id/reviews/new', to: 'reviews#new'
    resources :reviews, only: [ :create ]
  end

  # delete '/reviews/:id', to: 'reviews#destroy'
  resources :reviews, only: :destroy
end
