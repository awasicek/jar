class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :name, :password, :email))
    if @user.save
      flash[:success] = "Thank you for registering. Please log in to access your account."
      redirect_to new_session_path
    else
      flash[:failure] = "That username and/or email is already registered."
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params.require(:user).permit(:username, :name, :password, :email))
      flash[:success] = "Account successfully edited."
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
