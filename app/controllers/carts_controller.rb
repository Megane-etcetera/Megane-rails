class CartsController < ApplicationController
  def index
  	
  	@user = current_user.id
  	@cart = current_user.carts


    
  	
  	# @product = Product.find(params[:id]) =(cart.product)
    # @discs = @product.discs
    # @artists = @discs.joins(:tracks).pluck(:artist_name).uniq
    # binding.pry
  end

  def create

  	 @cart = Cart.new(cart_params)
  	 @cart.user_id = current_user.id
  	 @cart.save
  	 redirect_to root_path
  end

  def update
  		
  		@cart = Cart.find(params[:id])

  	 	@cart.user_id = current_user.id
     	@cart.update(cart_params)
     	redirect_to carts_path(current_user.id)
  end

  def destroy
  		
  		@cart = Cart.find(params[:id])
  	 	@cart.user_id = current_user.id
     	@cart.destroy
     	redirect_to carts_path(current_user.id)
  end

  private
  	def cart_params
  		params.require(:cart).permit(:quantity,:user_id,:product_id,:sub_total)
  	end

end
