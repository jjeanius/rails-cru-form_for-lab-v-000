module SongsHelper

  def navigate
    @song = Song.create(params[:name, :artist_id, :genre_id])
    @artist = Artist.create(params[:name, :bio])
    @genre = Genre.create(params[:name])
  end
end
