class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @artist = Artist.find_or_create_by(params[:id])
    @genre = Genre.find_or_create_by(params[:id])
    @song = Song.new(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end
end
