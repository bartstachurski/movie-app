class Api::ActorsController < ApplicationController
  def index
    # index sorts actors by eldest to youngest
    @actors = Actor.order(age: :desc)
    render 'index.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender],
      movie_id: params[:movie_id]
      )
    if @actor.save
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    @actor.movie_id = params[:movie_id] || @actor.movie_id
    @actor.save
    if @actor.save
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render 'destroy.json.jb'
  end
end
