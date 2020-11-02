class GenresController < ApplicationController
  before_action :get_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(get_params)
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Genre.all
  end

  def edit
  end

  def show
  end

  def update
    @genre.update(get_params)
    redirect_to genre_path(@genre)
  end

  private

  def get_genre
    @genre = Genre.find(params[:id])
  end

  def get_params
    params.require(:genre).permit(:name)
  end
end
