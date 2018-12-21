class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals
  end

  def show
    @animal = Animal.find(params[:id])
    render json: @animal
  end

  # how many animals are there?
  def count
    @count = Animal.count
    render json: { count: @count }
  end

  def create
    @species = Species.find_or_create_by(name: params[:species])
    @animal = Animal.create(name: params[:name], gender: params[:gender].to_i, species: @species)

    render json: @animal
  end

end
