class UsersController < ApplicationController


  def index
    @users=User.find_by(id: params[:id])
  end

  def create
    @user=User.new(name: params[:name], email: params[:email], password:params[:password])
    if @user.save
      redirect_to("/users/#{@user.id}/index")
    else
      render("/users/signup")
    end
  end

  def new
  end

  def signin
    @user=User.find_by(email: params[:email], password: params[:password])
   if @user
     redirect_to("/users/#{@user.id}/index")
   else
     render("/users/signin")
   end

  end





end
