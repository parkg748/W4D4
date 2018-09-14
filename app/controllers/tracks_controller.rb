class TracksController < ApplicationController
  def new
    @track = Track.new
    render :new
  end

  def create
    @track = Track.new(track_params)
    @track.album_id =
    @track.band_id =
    if @track.save
      redirect_to
    else
      flash.now[:errors] = @track.errors.full_messages
    end
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def track_params
    params.require(:track).permit(:title, :ord, :type_of_track)
  end
end
