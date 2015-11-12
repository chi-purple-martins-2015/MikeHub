class PagesController < ApplicationController
  def index
    @featured_articles = Article.limit(8)
    @recently_added_articles = Article.order(created_at: :desc).limit(5)
  end

  def search
    
  end
end
