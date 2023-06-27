class MoviesController < ApplicationController
  def index
    @movie= Movie.all
  end

  def new
  end

  def create
    @movie= Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end
end
