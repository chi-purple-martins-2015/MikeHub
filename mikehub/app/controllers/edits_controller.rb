class EditsController < ApplicationController
  def new
    article = Article.find(params[:article_id])
    @edit = Edit.new(title: article.title, subtitle: article.subtitle, content: article.content)
  end

  def create
    @edit = Edit.new(edit_params)
    if @edit.valid?
      @edit.save
      redirect_to @edit
    else
      @errors = @edit.errors.full_messages
      render 'new'
    end
  end

  def show
  end

  private
    def edit_params
      params.require(:edit).permit(:title, :subtitle, :content)
    end
end
