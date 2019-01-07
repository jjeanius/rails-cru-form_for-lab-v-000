class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @artist = Artist.new(artist(:name, :bio))
    @genre = Genre.new(genre(:name))
  end

  def create
    @song = Song.new(song_params[:name])
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

def update
  @song = Artist.find (params[:id])
  @song.update(song_params(:name, :artist_id, :genre_id))
  redirect_to song_path(@song)
end

private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
