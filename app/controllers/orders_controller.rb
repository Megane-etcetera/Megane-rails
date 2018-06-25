class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def new
      @order = Order.new
      @user = User.find(current_user.id)
      @cart = current_user.carts
  end
  
  def decision
    
    @order = Order.new
    @user = User.find(current_user.id)

    @carts = current_user.carts
    

     
        
      
   

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
      redirect_to root_path
      carts = current_user.carts
      
        carts.each do |c|
            order_product = OrderProduct.new
            order_product.order_id = order.id 
            order_product.quantity = c.quantity 
            order_product.product_id = c.product_id
            order_product.order_product_price = order.order_price
            order_product.save
        end

        carts.delete_all        
        
  end

  def address
  end

  def payment
  end

  private
    def order_params
      params.require(:order).permit(:post_num,:user_id,:address,:order_price)
    end

    def order_product_params
      params.require(:order_product).permit(:user_id,:product_id,:order_id,:quantity,:status)
    end
end
