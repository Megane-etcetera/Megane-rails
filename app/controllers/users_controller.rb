class UsersController < ApplicationController
  def index
    @u_search = User.search(params[:q])
    @users = @u_search.result(distinct: true).page(params[:page])
  end
  

  def edit
      if admin_signed_in?
        @user = User.find(params[:id])
      else
      if @user = User.exists?(params[:id])
         @user = User.find(params[:id])
        if @user != current_user
          redirect_to user_path(@user),alert:"他のユーザーを編集する事はできません"
        end
      else
          redirect_to user_path(current_user), alert:"存在しないユーザーです"
        end
      end
  end

  def update
      @user = User.find(params[:id])
      if admin_signed_in? or @user == current_user
      if @user.update(user_params)
         redirect_to user_path(@user), notice:"ユーザー情報編集が完了しました"
      else
         redirect_to edit_user_path(@user), alert:"ユーザー情報編集に失敗しました"
      end
    end
  end

  def destinationselect
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_order_decision_path(user)
  end

  def show
      if @user = User.exists?(params[:id])
         @user = User.find(params[:id])
         @orders = @user.orders
         @product = @user.products
         @reviews = Review.where(user_id: params[:id])
      else
         redirect_to user_path(current_user),alert:"存在しないユーザーです"
      end
      
  end

  def unsubsc
    if admin_signed_in?
        @user = User.find(params[:id])
      else
        if @user = User.exists?(params[:id])
           @user = User.find(params[:id])
        if @user != current_user
           redirect_to user_path(@user), alert:"他のユーザーを退会する事はできません"
        end
      else
          redirect_to user_path(current_user), alert:"存在しないユーザーです"
        end
      end

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    if admin_signed_in?
       redirect_to users_path
    else
       redirect_to root_path
    end
  end

  private
    def user_params

      params.require(:user).permit(:name,:kana,:post_number,:address,:tell,:email, :destinationnumber)

    end
    
    def search_params
      params.require(:q).permit!
    end
end
