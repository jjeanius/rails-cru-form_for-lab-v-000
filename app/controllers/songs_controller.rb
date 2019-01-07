class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new(song_params[:name, :artist_id, :genre_id])
    @artist.id = song(params[artist_id])
    @genre.id = song(params[artist_id])
  end

  def create
    @song = Song.new(song_params[:name, :artist_id, :genre_id])
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
