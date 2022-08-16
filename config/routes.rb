Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb 'path', to: 'controller#action'
  # Read all restaurants
  get 'restaurants', to: 'restaurants#index'

  # Create a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # Read one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # Delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # RESOURCES
  # resources :restaurants, except: [:destroy]
  # resources :restaurants, only: [:index, :show]
end
