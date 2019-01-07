class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    SongsHelper
  end

  def create
    SongsHelper
    #@song = Song.new(song_params[:name, :artist_id, :genre_id])
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

  @artist = Artist.create(params[:name])
  @genre = Genre.create(params[:name])

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
