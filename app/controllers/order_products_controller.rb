class OrderProductsController < ApplicationController

  before_action :authenticate_admin!

  def create
  end

  def index
    @orders = Order.page(params[:page])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @orderproduct = OrderProduct.find(params[:id])
    @orderproduct.update(order_product_params)
    redirect_to edit_order_product_path(@orderproduct.order.id)
  end

  private
    def order_product_params

    params.require(:order_product).permit(:order_id,:quantity,:product_id, :status,:order_product_price)

    end

end