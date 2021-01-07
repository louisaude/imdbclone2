class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :destroy, :edit, :update]

  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def create 
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  def show
    @movie = Movie.find(params[:id])
  end
private
  def movie_params
    params.require(:movie).permit(:title, :plot, :genre)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
