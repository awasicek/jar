class MemsController < ApplicationController
  def index
    @mems = Mem.all
  end

  def show
    @mem = Mem.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
