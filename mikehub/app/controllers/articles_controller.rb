class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @articles
    else
      @errors = @article.errors.full_messages
      render 'new'
    end
  end
  
  def show
  end

  def edit
  end

  def update 
    @article = Article.find(article_params)
    p @article
    if @article.update(article_params)
      redirect_to @articles
    else
      render 'edit'
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content)
  end

end

