class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users=User.find_by(id: params[:id])
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to("/users/#{@user.id}/index")
    else
      render("/users/signup")
    end
  end

  def signin
    @user=User.find_by(email: params[:email], password: params[:password])
   if @user
     redirect_to("/users/#{@user.id}/index")
   else
     render("/users/signin")
   end

  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end




end
