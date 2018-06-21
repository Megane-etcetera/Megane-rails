class UsersController < ApplicationController
  def search
  end

  def edit
      @user = User.find(params[:id])
      if @user == nil
        redirect_to user_path(current_user), alert:"存在しないユーザーです"
      elsif @user != current_user
        redirect_to user_path(@user), alert:"他のユーザー情報を編集する事はできません"
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
      @product = @user.products
  end

  def destroy
  end

  private
    def user_params

      params.require(:user).permit(:name,:kana,:post_number,:address,:tell,:email)

    end
end
