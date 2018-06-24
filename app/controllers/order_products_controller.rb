  class OrderProductsController < ApplicationController
  def create
  end

  def index
    @orders = OrderProduct.all
  end

  def show
  end

  def edit
    @order = OrderProduct.find(params[:id])
  end

  def update
    @order = OrderProduct.find(params[:id])
    @order.update(order_product_params)
    redirect_to order_products_path
  end

  def destroy
  end



private
def order_product_params

  params.require(:order_product).permit(:order_id,:quantity,:product_id, :status,:order_product_price)

end
end