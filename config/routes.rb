Rails.application.routes.draw do
  get 'documentary_film/index'
  get 'documentary_film/new'
  get 'documentary_film/create'
  get 'series/index'
  get 'series/new'
  get 'series/create'
  get 'movies/index'
  get 'movies/new', to:'movies#new'
  get 'movies/create'

  # Rutas Post
  post "movies" =>"movies#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
