class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      @errors = @article.errors.full_messages
      render 'new'
    end
  end

  def show
    @edits = @article.edits
  end

  def edit
  end

  def update
    @article = Article.find(params[:article_id])
    @edit = Edit.find(params[:id])
    @article.update_attributes(title: @edit.title, subtitle: @edit.subtitle, content: @edit.content)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content)
  end

end
