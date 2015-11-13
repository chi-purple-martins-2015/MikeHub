class EditsController < ApplicationController
  def new
    @edit = Edit.new
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

  private
    def edit_params
      params.require(:edit).permit(:title, :subtitle, :content)
    end
end
