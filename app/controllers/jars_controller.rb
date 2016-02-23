class JarsController < ApplicationController
  def index
    @jars = Jar.all
  end

  def show
    @jar = Jar.find(params[:id])
    
  end

  def show_my_jars
    if logged_in?
      @jar = current_user.jars
    else
      flash[:failure] = "Please login before viewing your jars."
      redirect_to new_session_path
    end
  end

  def new
    @jar = Jar.new
  end

  def create
    if logged_in?
      @jar = current_user.jars.new(params.require(:jar).permit(:name))
      if @jar.save
        redirect_to show_my_jars_path
      else
        render :new
      end
    else
      flash[:failure] = "Please login before creating a new jar."
      redirect_to new_session_path
    end
  end

  def edit
    @jar = Jar.find(params[:id])
  end

  def update
    @jar = Jar.find(params[:id])
    if @jar.update_attributes(params.require(:jar).permit(:name))
      redirect_to jars_path
    else
      render :edit
    end
  end

  def destroy
    @jar = Jar.find(params[:id])
    @jar.destroy
    redirect_to jars_path
  end
end
