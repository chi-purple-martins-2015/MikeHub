class Admin::ArticlesController < ApplicationController
  before_filter :authorized?


  private

  def authorized?
    unless admin_logged_in?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end


end