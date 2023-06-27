class DocumentaryFilmController < ApplicationController
  def index
    # almacenamos todos los documentales
    @documentary_films=DocumentaryFilm.all
  end

  def new
    # capturamos los datos enviados en el formulario 
    @documentary_film=DocumentaryFilm.new
  end
  
  def create
    # guardando documentales en la db
    @documentary_film=DocumentaryFilm.new(documentary_film_params)
    if @documentary_film.save
      redirect_to documentary_films_path
    else
      render :new
    end
  end
  def documentary_film_params
    params.require(:documentary_film).permit(:name,:synopsis,:director)
  end
end
