class SessionsController < ApplicationController
  def new
  end
  def created
    @user = User.find_by(email: params[:session][:email].downcase)
    p @user
    if @user && @user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      redirect_to("/users/#{@user.id}/index")
    else
      # エラーメッセージを作成する
      render 'new'
    end
  end

  def destroy
  end
end
