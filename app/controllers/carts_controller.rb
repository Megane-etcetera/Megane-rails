class CartsController < ApplicationController
  def show
  	@cart = current_user.carts
  	# @product = Product.find(params[:id])
    # @discs = @product.discs
     # @artists = @discs.joins(:tracks).pluck(:artist_name).uniq
    # binding.pry
  end

  def add_product
  end
end
