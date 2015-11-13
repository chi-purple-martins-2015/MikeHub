class Admin::UsersController < ApplicationController
  before_filter :authorized?

  def show
    @user = User.find_by(id: params[:id])
  end

  def index
    @all_users = User.all
  end

  def delete
    @target_user = User.find_by(id: user_id)
    @target_user.destroy
  end

  def make_admin
    @user = User.find_by(id: params[:id])
    @user.admin = true
    redirect_to admin_user_path(current_user)
  end

  private

  def authorized?
    unless admin_logged_in?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end


end