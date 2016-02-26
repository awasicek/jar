class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    if User.find(params[:id]) == current_user
      @user = User.find(params[:id])
    else
      flash[:failure] = "You can only view your own account."
      redirect_to home_path
    end
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
    if User.find(params[:id]) == current_user
      @user = User.find(params[:id])
    else
      flash[:failure] = "You can only edit your own account."
      redirect_to home_path
    end
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
    if User.find(params[:id]) == current_user
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    else
      flash[:failure] = "You can only delete your own account."
    end
  end
end
