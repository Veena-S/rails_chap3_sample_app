module SessionsHelper
  # Logs in the given user.
  # temporary cookies created using the session method are automatically encrypted
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  # https://www.learnenough.com/ruby-on-rails-6th-edition-tutorial/basic_login#sec-logging_out
  # Logging out involves undoing the effects of the log_in method.
  # One way to do this would be to use the session’s delete method to remove just the user id:
  #          session.delete(:user_id)
  # This would work in our case because the only current session variable is session[:user_id], 
  # but an even better technique is to use the reset_session method to ensure that
  # all session variables are reset upon logging out.
  def log_out
    reset_session
    @current_user = nil
  end
end
