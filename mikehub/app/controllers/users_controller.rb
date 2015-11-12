class UsersController < ApplicationController
  def new
    @user = User.new
  end



  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/users/new"
    else
      render "new"
    end
  end


  def show
    @user = User.find_by(id: params[:id])
    @articles = @user.articles
  end


  def delete
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :img_url, :password)
  end
end
