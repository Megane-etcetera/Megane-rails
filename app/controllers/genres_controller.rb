class GenresController < ApplicationController

  before_action :authenticate_admin!
  
  def index
    if admin_signed_in?
    else redirect_to root_path
    end
  	@genre = Genre.new
  	@genres = Genre.all
  end

  def create
  	genre = Genre.new(genre_params)
  	genre.save
  	redirect_to genres_path
  end

  def destroy
  	genre = Genre.find(params[:id])
    genre.destroy
    redirect_to genres_path
  end

  private
 
    def genre_params
        params.require(:genre).permit(:genre, :priority)
  end
end
