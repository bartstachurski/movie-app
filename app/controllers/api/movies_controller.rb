class Api::MoviesController < ApplicationController
  def index
    # Index defaults to showing only movies that are in English
    @movies = Movie.where(english: true)
    render 'index.json.jb'
  end

  def index_ascending_year
    @movies = Movie.order(:year)
    render 'index.json.jb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
      )
    if @movie.save
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.plot = params[:plot]
    @movie.director = params[:director]
    @movie.english = params[:english]
    if @movie.save
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render 'destroy.json.jb'
  end
end
