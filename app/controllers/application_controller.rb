class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :authorize, :can_view?, :can_contribute?, :is_creator?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  def logged_in?
    !!current_user
  end

  def authorize
    redirect_to new_session_path unless logged_in?
  end

  def can_view?
    ##returns true if the current user is in that jar's viewer list
    !!Jar.find(params[:id]).viewers.find_by(user_id: current_user)
  end

  def can_contribute?
    ##returns true if the current user is in that jar's contributor list
    !!Jar.find(params[:id]).contributors.find_by(user_id: current_user)
  end

  def is_creator?
    ##returns true if the current user is that jar's creator
    current_user == Jar.find(params[:id]).user
  end

end
