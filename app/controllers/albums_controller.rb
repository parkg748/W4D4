class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @band_id = params[:band_id]
    render :new
  end

  def index
    @albums = Album.all
    render :index
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      redirect_to new_band_album_url
    end
  end

  def edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update

  end

  def destroy

  end

  private
  def album_params
    params.require(:album).permit(:title, :year, :type_of_album, :band_id)
  end
end
