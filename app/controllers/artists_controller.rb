class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "Artist successfully added!"
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
    render :edit
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      flash[:notice] = "Artist successfully updated!"
      redirect_to artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist successfully DESTROYED!!"
    redirect_to artists_path
  end

  private
    def artist_params
      params.require(:artist).permit(:name)
    end

end