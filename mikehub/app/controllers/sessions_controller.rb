class SessionsController < ApplicationController


    def login
    end



  def create
    p user_params[:name]
    p "=========================================="
    user = User.find_by(name: user_params[:name])
    p user
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(user_params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def logout
  end


  def user_params
    params.require(:user).permit(:name, :password)
  end
end
