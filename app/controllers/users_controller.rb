class UsersController < ApplicationController
  def search
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user.id = current_user.id
      @user.update(user_params)
      redirect_to user_path(@user)
  end

  def show
      @user = User.find(params[:id])
      @product = Product.find(params[:id])
  end

  def destroy
  end

  private
    def user_params

      params.require(:user).permit(:name,:kana,:post_number,:address,:tell,:email)

    end
end
