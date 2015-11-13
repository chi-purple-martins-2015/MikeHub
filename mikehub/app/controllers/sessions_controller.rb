class SessionsController < ApplicationController

  def login
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      if user.admin == true
        session[:admin_id] = user.id
      end
      redirect_to '/'
    else
      render :login
    end
  end


  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end



end
