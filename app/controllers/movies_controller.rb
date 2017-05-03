class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie_title = params[:title]
    @movie_year = params[:year]
    @movie_duration = params[:duration]
    @movie_description = params[:description]
    @movie_image_url = params[:image_url]
    @movie_director_id = params[:director_id]

    new_movie = Movie.new
    new_movie.title = @movie_title
    new_movie.year = @movie_year
    new_movie.duration = @movie_duration
    new_movie.description = @movie_description
    new_movie.image_url = @movie_image_url
    new_movie.director_id =  @movie_director_id

    new_movie.save

    redirect_to('/movies')
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @moive = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    redirect_to('/movies')
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end
end
