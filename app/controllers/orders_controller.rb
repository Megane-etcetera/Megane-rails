class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def new
      @user = User.find(current_user.id)
      @cart = current_user.carts
      binding.pry
      @order = Order.new 
  end

  
  def decision
    @user = current_user.id
    @carts = current_user.carts
    @oreder = Order.new

    # @carts =  Cart.where(current_user.carts)
    # @products = Product.where(@carts)
    # @oderproduct = Oderproduct.new(@order.id)
    # @orderproduct = @products.orderproduct.build
    #こんな記述になるのではないかな？（あとはカートを消す記述）

  end

  def show
    @order = Order.find(params[:id])
    @orderproducts = @order.order_products
  end  

  def create

  end

  def address
  end

  def payment
  end

end
