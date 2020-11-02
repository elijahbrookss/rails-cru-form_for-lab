class SongsController < ApplicationController

    before_action :get_song, only: [:show, :edit, :update]

    def new
      @song = Song.new
    end

    def create
      @song = Song.create(get_params)
      redirect_to song_path(@song)
    end

    def index
      @songs = Song.all
    end

    def edit
    end

    def show
    end

    def update
      @song.update(get_params)
      redirect_to song_path(@song)
    end

    private

    def get_song
      @song = Song.find(params[:id])
    end

    def get_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
