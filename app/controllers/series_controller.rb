class SeriesController < ApplicationController
  def index
    @serie=Serie.all
  end

  def new
    #Captura los datos enviados en el formulario
    @serie = Serie.new
  end

  def create
    # Guardando peliculas en db
    @serie= Serie.new(serie_params)
    if @serie.save
      redirect_to series_path
    else
      render :new
    end

  end
  def serie_params
    params.require(:serie).permit(:name,:synopsis,:director)
  end
end
