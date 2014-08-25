class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      @movie = Movie.new
      @movie.valid?
      render :new
    end
  end


  private

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end