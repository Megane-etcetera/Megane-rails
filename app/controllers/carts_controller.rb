class CartsController < ApplicationController
  def show
  	@user = current_user.id
  	@cart = @user.carts
  	# @product = Product.find(params[:id])
    # @discs = @product.discs
     # @artists = @discs.joins(:tracks).pluck(:artist_name).uniq
    # binding.pry
  end

  def add_product
  end
end
