class AdminsController < ApplicationController
  before_filter :authorized?

  def delete
    @target_user = User.find_by(id: user_id)
    @target_user.destroy
  end

  def find_subheading(article)
    heading_matcher = /((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/
    link_open_tag = '<a href="<link>">'
    link_close_tag = '</a>'
    replacement_text = '\1' + link_open_tag +'\3' + link_close_tag + '\4'
    @linked_article = article.gsub(heading_matcher, replacement_text)
  end

  private
  def authorized?
    unless admin_logged_in?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end


end

