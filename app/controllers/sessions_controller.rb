class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the users show page
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
