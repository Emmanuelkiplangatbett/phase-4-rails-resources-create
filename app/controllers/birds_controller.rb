class BirdsController < ApplicationController

  # GET /birds
  def index
    birds = Bird.all
    render json: birds, status: :ok
  end

  # GET /birds/:id
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird
    else
      render json: { error: "Bird not found" }, status: :not_found
    end
  end

  def create
    bird = Bird.create(name: Hen, species: Kuku)
    render json: bird, status: :created
  end

end