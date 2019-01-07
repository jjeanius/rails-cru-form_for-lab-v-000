module SongsHelper

  def navigate
    @artist = Artist.create(params[:name, :bio])
    @genre = Genre.create(params[:name])
  end
end
