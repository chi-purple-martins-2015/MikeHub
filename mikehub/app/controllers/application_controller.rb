class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def admin_logged_in?
    logged_in? && session[:admin_id].present?
  end

  def logged_in?
    session[:user_id].present?
  end


  helper_method :current_user
  helper_method :logged_in?
  helper_method :admin_logged_in?
end
