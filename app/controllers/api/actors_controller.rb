class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render 'index.json.jb'
  end

  def index_ascending_year
    @actors = Actor.order(:year)
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
      gender: params[:gender]
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
