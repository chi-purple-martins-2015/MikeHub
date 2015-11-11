class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]
  
  def new
  end

end