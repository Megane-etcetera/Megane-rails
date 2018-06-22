class CartsController < ApplicationController
  def show
  	@user = current_user.id
  	@cart = current_user.carts
  	@
  	# @product = Product.find(params[:id]) =(cart.product)
    # @discs = @product.discs
     # @artists = @discs.joins(:tracks).pluck(:artist_name).uniq
    # binding.pry
  end

  def add_product
  end

  def update
  	  @cart = current_user.carts
     
      @cart.update(contact_params)
      redirect_to cart_user_path(@user)
  end 

  private
  	def cart_params
  		params.require(:cart).permit(:quantity)
  	end
end
