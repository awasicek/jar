class ContributorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contributor = Contributor.new
    @user = User.new
  end

  def create
    @jar = Jar.find(params[:jar_id])
    @user = User.find_by({username: params[:user][:username]})
    @contributor = @jar.contributors.new({user: @user, jar: @jar})
    if @contributor.user == nil
      flash[:failure] = "Failed to add contributor."
      redirect_to new_contributor_path
    elsif @contributor.save
      flash[:success] = "You successfully added #{@user.username} as a contributor."
      redirect_to show_my_jars_path
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
