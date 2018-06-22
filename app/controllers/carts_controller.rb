class CartsController < ApplicationController
  def show
  	@product = Product.find(params[:id])
    @disc = @product.discs
    
  end

  def add_product
  end
end
