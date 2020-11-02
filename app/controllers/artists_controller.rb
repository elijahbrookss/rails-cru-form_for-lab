class ArtistsController < ApplicationController

  before_action :get_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(get_params)
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def edit
  end

  def show
  end

  def update
    @artist.update(get_params)
    redirect_to artist_path(@artist)
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end

  def get_params
    params.require(:artist).permit(:name, :bio)
  end
end
