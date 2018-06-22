class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def address
  end

  def payment
  end

  def decision
  end

  def show
    @order = Order.find(params[:id])
    @orderproducts = @order.order_products
  end  

  def create
  end
end
