class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    destination = Destination.new(destination_params)
    destination.user_id = current_user.id
    destination.prefecture_id = 1
    destination.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def destination_params
    params.require(:destination).permit(:user_id, :post_nember, :prefecture_id, :address)
  end


end
