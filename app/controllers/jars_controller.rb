class JarsController < ApplicationController
  def index
    @jars = Jar.all
  end

  def show
    @jar = Jar.find(params[:id])
  end

  def new
    @jar = Jar.new
  end

  def create
    @jar = Jar.new(params.require(:jar).permit(:name))
    if @jar.save
      redirect_to jars_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
