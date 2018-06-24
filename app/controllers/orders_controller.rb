class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def new
      @order = Order.new
      @user = User.find(current_user.id)
      @cart = current_user.carts
<<<<<<< HEAD

    
       
      
=======
      @order = Order.new 
>>>>>>> 01d078e2c833aeb33588f97d7e91601a1298ce9f
  end

  
  def decision
    @user = User.find(current_user.id)
    @carts = current_user.carts
    @orders = @user.orders
    @order = @orders.last
    # @oreder = Order.where(user_id: current_user.id)

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
      order = Order.new(order_params)
      order.user_id = current_user.id
      # binding.pry
      order.save
      redirect_to user_order_decision_path(current_user.id)

  end

  def address
  end

  def payment
  end

  private
    def order_params
      params.require(:order).permit(:user_id,:address,:order_price)
    end

end
