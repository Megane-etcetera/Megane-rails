class UsersController < ApplicationController
  def search
  end

  def edit
    
  end

  def update
  end

  def show
      @user = User.find(params[:id])
      @product = Product.find(params[:id])
  end

  def destroy
  end
end
