class GenresController < ApplicationController
  def index
  	@genre = Genre.new
  	@genres = Genre.all
  end

  def create
  	genre = genre.new(genre_params)
  	genre.save
  	redirect_to genres_path
  end

  

  def destroy
  end

  private
 
    def genre_params
        params.require(:post).permit(:title)
    end
end
