class DiscsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @disc = Disc.new
  end

  def create
    @product = Product.find(params[:product_id])
    @disc = Disc.new(disc_params)
    @disc.product_id = @product.id
    @disc.save
    redirect_to  edit_product_disc_path(@product ,@disc)
  end

  def show
    @product = Product.find(params[:product_id])
    @disc = Disc.find(params[:id])
    @track = @disc.tracks.build

  end

  def edit
    @product = Product.find(params[:product_id])
    @disc = Disc.find(params[:id])
    @track = @disc.tracks
  end

  def update
    product = Product.find(params[:product_id])
    disc = Disc.find(params[:id])
    disc.update(disc_params)
    redirect_to edit_product_path(product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @disc = Disc.find(params[:id])
    @disc.destroy
    redirect_to edit_product_path(@product)
  end

  private
    def disc_params
      params.require(:disc).permit(:product_id, :disc_type, :disc_number, :tracks_attributes =>[:id, :disc_id, :track_title, :track_title_kana, :track_number, :artist_name, :artist_name_kana,  :_destroy])
    end

end