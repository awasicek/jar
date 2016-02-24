class JarsController < ApplicationController
  def index
    @jars = Jar.where :publicview => true
  end

  def show
    if is_creator? || can_view? || can_contribute? || is_public?
      @jar = Jar.find(params[:id])
      @mem = @jar.mems
    else
      flash[:failure] = "You do not have permissions for that jar."
      redirect_to home_path
    end
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
    if logged_in?
      @jar = Jar.new
    else
      flash[:failure] = "Please login before creating a jar."
      redirect_to new_session_path
    end
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
    if is_creator?
      @jar = Jar.find(params[:id])
    else
      flash[:failure] = "Only creators can edit their jars."
      redirect_to home_path
    end
  end

  def update
    @jar = Jar.find(params[:id])
    if @jar.update_attributes(params.require(:jar).permit(:name, :publicview))
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
