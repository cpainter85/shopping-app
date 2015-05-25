class AuthenticationController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Thanks for signing in!'
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: 'Signed out!'
  end
end
