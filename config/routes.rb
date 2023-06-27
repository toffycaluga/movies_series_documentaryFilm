Rails.application.routes.draw do
  get 'documentary_film',to:"documentary_film#index"
  get 'documentary_film/new'
  get 'documentary_film/create'
  get 'series',to:"series#index"
  get 'series/new'
  get 'series/create'
  get 'movies',to:"movies#index"
  get 'movies/new', to:'movies#new'
  get 'movies/create'

  # Rutas Post
  post "movies" =>"movies#create"
  post "series" =>"series#create"
  post "documentary_films" =>"documentary_film#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
