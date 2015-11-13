class EditsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @edits = @article.edits.order(:created_at => :desc)
  end

  def new
    @article = Article.find(params[:article_id])
    @edit = Edit.new(title: @article.title, subtitle: @article.subtitle, content: @article.content)
  end

  def create
    @article = Article.find(params[:article_id])
    @edit = Edit.create(edit_params)
    current_user.edits << @edit
    @article.edits << @edit
    redirect_to @edit
  end

  def show
    @edit = Edit.find(params[:id])
    @article = Article.find(@edit.article.id)
  end

  private
    def edit_params
      params.require(:edit).permit(:title, :subtitle, :content)
    end
end
