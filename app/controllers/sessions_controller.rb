class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the users show page
      # To solve "session fixation" attacks, the solution is to reset
      #  the session immediately before logging in so that the attackers
      # desired id gets cleared and a freshly created id ends up in the session hash
      reset_session
      log_in user
      redirect_to user  # Rails automatically converts this to the route for the user’s profile page: user_url(user)
    else
      # Create an error message
      # flash[:] message will not disappear even if another request comes up.
      # flash[:danger] = 'Invalid email/password combination'
      #  To fix the above issue, use flash.now, which is specifically designed for displaying flash messages on rendered pages. Unlike the contents of flash, the contents of flash.now disappear as soon as there is an additional request
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end 
  end

  def destroy
  end
end
