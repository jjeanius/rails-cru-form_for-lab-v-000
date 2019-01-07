module SongsHelper

  def navigate
    @song = Song.create(params[:name, :artist_id, :genre_id])
    @artist = Artist.create(params[:genre][:name, :bio])
    @genre = Genre.create(params[:genre][:name])
  end
end
