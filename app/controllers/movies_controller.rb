class MoviesController < ApplicationController
  def index
    @movie= Movie.all
  end

  def new
    #Captura los datos enviados en el formulario
    @movie = Movie.new
  end

  def create
    # Guardando peliculas en db
    @movie= Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end

  end
  def movie_params
    params.require(:movie).permit(:name,:synopsis,:director)
  end
end
