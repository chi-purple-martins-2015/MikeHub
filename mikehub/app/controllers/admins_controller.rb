class AdminsController < ApplicationController
  before_filter :authorized?

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

/(\r\n){2}<p>([\w ]*\w[\w ])<\/p>/

heading_matcher = /((\r\n){2}<p>)([\w ]*\w[\w ])(<\/p>(\r\n){2})/

link_open_tag = '<a href="<link>">'
link_close_tag = '</a>'

replacement_text = '\1' + link_open_tag +'\3' + link_close_tag + '\4'

article_text.gsub(heading_matcher, replacement_text)

"</p>(\r\n\r\n<p>)(The Bears2)(</p>\r\n\r\n)<p>"

"</p>\r\n\r\n<p><a href="<link>">The Bears2</a></p>\r\n\r\n<p>"



