class OrdersController < ApplicationController
  def index
      @user = User.find(params[:user_id])
    if @user != current_user
       redirect_to root_path, alert:"他のユーザーの決済情報を見る事はできません"
    else
      @orders = Order.where(user_id: current_user.id).page(params[:page])
    end

  end

  def new
      @order = Order.new
      @user = User.find(current_user.id)
      @cart = current_user.carts
  end
  
  def decision
    @destination = Destination.new
    @users = User.find(params[:user_id])
    @destinations = @users.destinations
      if @users.id != current_user.id
        redirect_to root_path, alert: "ほかのユーザーの決済を行うことはできません"
      end
      if Cart.find_by(user_id: params[:user_id]).nil?
      redirect_to root_path, alert: "カートが空です"
      end

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
      order.post_num = Destination.find(order.user.destinationnumber).post_nember
      order.address = Destination.find(order.user.destinationnumber).prefecture.prefecture_name + Destination.find(order.user.destinationnumber).address
      order.delivery_price = Destination.find(order.user.destinationnumber).prefecture.region.delivery_price
      order.order_price += order.delivery_price
      # binding.pry

      if order.save     # もし発注に成功したらカート情報を送ってカート削除
        carts = current_user.carts
        carts.each do |c|
            order_product = OrderProduct.new
            order_product.order_id = order.id 
            order_product.quantity = c.quantity 
            order_product.product_id = c.product_id
            order_product.order_product_price = c.sub_total
            order_product.status = "未発送"
            order_product.save

            # product = Product.find_by(id: c.product_id)
            c.product.stock -= c.quantity
            #sold_num = c.product.stock
            c.product.update(stock: c.product.stock)
            carts.delete_all
        end
        redirect_to root_path
      else            #発注に失敗したらカート情報を維持したままrootへ
        redirect_to root_path,alert: "決済に失敗しました入力情報を確認してください"
      end

        

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

    def product_params
       params.require(:product).permit( :stock)
    end
end
