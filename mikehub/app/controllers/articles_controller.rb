class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]

  def new
  end

  def show

  end

  def create
    @article = Article.create(article_params)
    if @article.valid?
      redirect_to root_path
    else
      @errors = @article.errors.full_messages
      render "/articles/new"
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :body)
  end

end

