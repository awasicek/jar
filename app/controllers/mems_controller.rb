class MemsController < ApplicationController
  def index
    @mems = Mem.all
  end

  def show
    @mem = Mem.find(params[:id])
  end

  def new
    @mem = Mem.new
  end

  def create
    @jar = Jar.find(params[:jar_id])
    @mem = @jar.mems.new(params.require(:mem).permit(:body, :date))
    if @mem.save
      redirect_to mems_path
    else
      render :new
    end
  end

  def edit
    @mem = Mem.find(params[:id])
  end

  def update
    @mem = Mem.find(params[:id])
    if @mem.update_attributes(params.require(:mem).permit(:body, :date))
      redirect_to mems_path
    else
      render :edit
    end
  end

  def destroy
    @mem = Mem.find(params[:id])
    @mem.destroy
    redirect_to mems_path
  end
end
