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
    @user = User.new(params[:user]) # Not the final implementation
    if@user.save
      # Handle a successful save
    else
      render 'new'
    end

  end
end
