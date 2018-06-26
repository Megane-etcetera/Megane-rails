class TracksController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @disc = Disc.find(params[:disc_id])
    @track = Track.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
