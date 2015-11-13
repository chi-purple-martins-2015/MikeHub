class EditsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @edit = Edit.new(title: @article.title, subtitle: @article.subtitle, content: @article.content)
  end

  def create
    @edit = Edit.create(edit_params)
    current_user.edits << @edit
    redirect_to @edit
  end

  def show
    @edit = Edit.find(params[:id])
  end

  private
    def edit_params
      params.require(:edit).permit(:title, :subtitle, :content)
    end
end
