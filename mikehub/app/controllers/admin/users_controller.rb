class Admin::UsersController < ApplicationController
  before_filter :authorized?

  def show
    @user = User.find_by(id: params[:id])
  end

  def delete
    @target_user = User.find_by(id: user_id)
    @target_user.destroy
  end

  private

  def authorized?
    unless admin_logged_in?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end


end