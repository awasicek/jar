class ViewersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @viewer = Viewer.new
    @user = User.new
  end

  def create
    @jar = Jar.find(params[:jar_id])
    @user = User.find_by({username: params[:user][:username]})
    @viewer = @jar.viewers.new({user: @user, jar: @jar})
    if @viewer.user == nil
      flash[:failure] = "Failed to add contributor.  User does not exist."
      redirect_to new_viewer_path
    elsif @viewer.save
      flash[:success] = "You successfully added #{@user.username} as a viewer."
      redirect_to show_my_jars_path
    else
      flash[:failure] = "Failed to add viewer."
      redirect_to new_viewer_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
