Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
