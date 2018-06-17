class DiscsController < ApplicationController
  def new
    @disc = Disc.new
    @disc.tracks.build
  end

  def create
    @disc = Disc.new(disc_params)
    @disc.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def disc_params
      params.require(:disc).permit(:product_id, :disc_type, :disc_number, tracks_attributes:[:disc_id, :track_title, :track_title_kana, :track_number, :artist_name, :artist_name_kana])
    end

end
