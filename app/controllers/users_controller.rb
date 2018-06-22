class UsersController < ApplicationController
  def index
    @u_search = User.search(params[:q])
    @users = @u_search.result(distinct: true)
  end
  

  def edit
      if admin_signed_in?
        @user = User.find(params[:id])
      else
        @user = User.find(params[:id])
        if @user == nil
          redirect_to user_path(current_user), alert:"存在しないユーザーです"
        elsif @user != current_user
          redirect_to user_path(@user), alert:"他のユーザー情報を編集する事はできません"
        end
      end
  end

  def update
      @user = User.find(params[:id])
      @user.id = current_user.id
      if @user.update(user_params)
         redirect_to user_path(@user), notice:"ユーザー情報編集が完了しました"
      else
         redirect_to edit_user_path(@user), alert:"ユーザー情報編集に失敗しました"
      end
  end

  def show
      @user = User.find(params[:id])
      @orders = @user.orders
      @product = @user.products
  end

  def destroy
  end

  private
    def user_params

      params.require(:user).permit(:name,:kana,:post_number,:address,:tell,:email)

    end
    
    def search_params
      params.require(:q).permit!
    end
end
