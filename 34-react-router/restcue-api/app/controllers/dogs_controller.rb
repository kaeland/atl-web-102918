class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def create
    byebug
  end
end
