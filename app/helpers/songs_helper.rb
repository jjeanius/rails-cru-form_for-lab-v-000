module SongsHelper

  def navigate
    @artist = Artist.create(params[:name, :bio])
    @genre = Genre.create(params[:name])
    @song = Song.create(params[:name, :artist_id, :genre_id])

    
end
