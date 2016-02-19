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
    @mem = current_user.mems.new(params.require(:mem).permit(:body, :date))
    if @mem.save
      redirect_to mems_path
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
