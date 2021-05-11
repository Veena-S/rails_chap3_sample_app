class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # To get the debug information using byebug gem in the rails server console
    # debugger
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if@user.save
      # Handle a successful save
      # Login the user after sign up
      reset_session
      log_in @user
      flash[:success] = "Welcome to the sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

      def user_params
        params.require(:user).permit( :name, :email, :password, :password_confirmation)
      end
end
