class OrderProductsController < ApplicationController
  def index
    @orders = OrderProduct.all
  end

  def edit
    @order = OrderProduct.find(params[:id])
  end

  def update
    @order = OrderProduct.find(params[:id])
    @order.update(order_product_params)
    redirect_to order_products_path
  end


  private
    def order_product_params

    params.require(:order_product).permit(:order_id,:quantity,:product_id, :status,:order_product_price)

    end

end