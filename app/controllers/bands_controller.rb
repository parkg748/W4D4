class BandsController < ApplicationController
  def show
    @band = Band.find(params[:id])
  end

  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(band_params)
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      redirect_to edit_band_url(@band)
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_url
  end

  def new
    @bands = Band.all
    render :new
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
