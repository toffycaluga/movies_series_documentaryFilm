class MoviesController < ApplicationController
  @errors=[]
  def index
    @errors
    @movie= Movie.all
  end

  def new
    @errors
  end

  def create
    @movie= Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      @errors.push(
        {
          title:"Algo Salio mal",
          description:"No se logro guardar en la base de datos"
        }
      )
      puts @error
      render :new
    end
  end
end
