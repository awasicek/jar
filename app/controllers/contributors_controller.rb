class ContributorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contributor = Contributor.new
  end

  def create
    @contributor = Contributor.new(params.require(:contributor).permit(:user_id, :jar_id))
    if @contributor.save
      flash[:success] = "You successfully added a contributor."
      redirect_to users_path
    else
      flash[:failure] = "Failed to add contributor."
      redirect_to new_contributor_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
