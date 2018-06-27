class DestinationsController < ApplicationController
  # def new
  #   @destination = Destination.new
  # end

  def create
    destination = Destination.new(destination_params)
    destination.save
    redirect_to user_order_decision_path(destination.user_id)
  end

private
  def destination_params
    params.require(:destination).permit(:user_id, :post_nember, :prefecture_id, :address)
  end


end
